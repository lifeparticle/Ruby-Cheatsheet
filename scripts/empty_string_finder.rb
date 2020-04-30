array = [
"R",
"R",
"R",
"R",
"",
"PG-13",
"R",
"R",
"R",
"PG-13",
"R",
"PG-13",
"R",
"R",
"",
"R",
"PG-13",
"PG-13"]

array.each_with_index do |item, index|
	puts "#{index}" if item == ""
end
