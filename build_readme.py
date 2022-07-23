import requests
import pathlib
import json
import re

RUBY_DOWNLOADS_URL =  "https://www.ruby-lang.org/en/downloads/"
RUBY_RSS_URL = "https://api.rss2json.com/v1/api.json?rss_url=https://www.ruby-lang.org/en/feeds/news.rss"

root = pathlib.Path(__file__).parent.resolve()

def replace_chunk(content, marker, chunk, inline=False):
	# build the regular expression pattern, DOTALL will match any character, including a newline
	r = re.compile(
		r"<!-- {} starts -->.*<!-- {} ends -->".format(marker, marker),
		re.DOTALL,
	)
	# add newline before and after
	if not inline:
		chunk = "\n{}\n".format(chunk)
	# build the final chunk by adding comments before and after the chunk
	chunk = "<!-- {} starts -->{}<!-- {} ends -->".format(marker, chunk, marker)
	# replace matched string using pattern provided with the chunk
	return r.sub(chunk, content)

def fetch_blog_posts(link):
	result = []
	response = requests.get(link)
	if response.status_code == 200:
		posts = json.loads(response.text)["items"]
		for post in posts:
			result.append(post)
	elif response.status_code == 404:
		print('Not Found: ') + link
	return result

def fetch_ruby_latest_version():
	response = requests.get(RUBY_DOWNLOADS_URL)
	if (response.status_code != 200):
		raise RuntimeError(f"Error while getting {RUBY_DOWNLOADS_URL}")
 	# search using the following regular expression and return the first occurrence
	return re.search("http.*ruby-(.*).tar.gz", response.text).groups()[0]

if __name__ == "__main__":
	readme = root / "README.md"
	readme_contents = readme.open().read()
	posts = fetch_blog_posts(RUBY_RSS_URL)

	if len(posts) != 0:
		# markdown formatting
		posts_md = "\n".join(
			["* [{title}]({link}) <br/> <sub>{pubDate}</sub>".format(**post) for post in posts]
		)
		readme_contents = replace_chunk(readme_contents, "news", posts_md)

	# Update the doc links to point the latest ruby version docs
	current_stable_version = root / "current_stable_version.txt"
	current_stable_version_contents = current_stable_version.open().read().strip()
	ruby_latest_version = fetch_ruby_latest_version()

	if (current_stable_version_contents != ruby_latest_version):
		doc_links = re.search("<!-- doc_links starts -->(.*)<!-- doc_links ends -->", readme_contents, re.DOTALL).groups()[0].strip()
		updated_doc_links = re.sub("core-\d.\d.\d", f"core-{ruby_latest_version}", doc_links)
		readme_contents = replace_chunk(readme_contents, "doc_links", updated_doc_links)
		current_stable_version.open("w").write(ruby_latest_version)

	readme.open("w").write(readme_contents)
