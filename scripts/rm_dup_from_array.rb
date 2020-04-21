a = [
"Drama",
"Mystery",
"Drama",
"Mystery",
"Drama",
"Mystery",
"Drama",
"Crime",
"Sci-FI",
"Sci-fi",
"Sci-Fi",
"Disaster",
"Thriller",
"Action",
"Drama",
"Crime",
"Drama",
"Mystery",
"Drama",
"Mystery",
"Drama"
]

case_sensitive = a.uniq
puts case_sensitive

puts "\n"

# Sci-FI will be in the case_insensitive array, since it's the first occurance
case_insensitive = a.uniq { |elem| elem.downcase }
puts case_insensitive
