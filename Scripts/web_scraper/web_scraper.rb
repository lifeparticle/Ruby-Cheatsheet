require "selenium-webdriver"
require 'uri'

def init_selenium_webdriver
	options = Selenium::WebDriver::Chrome::Options.new
	options.add_argument('--headless')
	return Selenium::WebDriver.for :chrome, options: options
end

def navigate(driver, url, page_no)
	driver.navigate.to URI.join(url, page_no.to_s)
end

def get_data(driver, pattern)
	return driver.find_elements(pattern)
end

def has_data?(data)
	return data.size() > 0
end

def parse_data(data, pattern)
	data.each do |quote|
		text = quote.find_element(pattern[:text]).text
		author = quote.find_element(pattern[:author]).text
		puts "#{text} -- #{author}"
	end
end

def main
	driver = init_selenium_webdriver
	url = "http://quotes.toscrape.com/page/"
	page_no = 1
	loop do
		navigate(driver, url, page_no)
		data = get_data(driver, {class_name: 'quote'})
		parse_data(data, {text: {class_name: 'text'}, author: {class_name: 'author'}})
		page_no += 1
		break unless has_data?(data)
	end
	driver.quit
end

main