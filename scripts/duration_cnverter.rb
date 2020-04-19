durations = [
"2:22",
"1:57",
"1:23",
"2:39",
"1:26",
"2:00",
"1:30",
"2:13",
"1:47"]

durations.each do |duration|
	duration_array = duration.split(/:/)
	hour_min = duration_array[0].to_i * 60
	mins = duration_array[1].to_i
	total_mins = hour_min + mins
	puts "#{total_mins}"
end