require 'net/http'
require 'json'

# http://www.omdbapi.com/

secret = ""
movie_list = [
"127 Hours",
"Life of Pi",
"The Shallows",
"The Impossible",
"Buried",
"Apocalypto",
"Tunnel",
"The Wave",
"The Quake",
"Thelma",
"3 Idiots",
"Ship of Theseus",
"Zindagi Na Milegi Dobara",
"Sahara",
"Raiders of the Lost Ark",
"Indiana Jones and the Temple of Doom",
"Indiana Jones and the Last Crusade",
"Indiana Jones and the Kingdom of the Crystal Skull",
"Enemy of the State",
"National Treasure",
"The Rock",
"Lord of War",
"National Treasure: Book of Secrets",
"Face/Off",
"Con Air",
"Mandy",
"In the Shadow of the Moon",
"The Neon Demon",
"Mother!",
"Maleficent",
"Constantine",
"The Conjuring",
"The Conjuring 2",
"Cloud Atlas",
"Hugo",
"The Polar Express",
"Jaws",
"Jumanji",
"Annihilation",
"Cloverfield",
"2001: A Space Odyssey",
"Minority Report",
"A.I. Artificial Intelligence",
"Starship Troopers",
"The Fifth Element",
"Close Encounters of the Third Kind",
"Solaris",
"Under the Skin",
"Serenity",
"Donnie Darko",
"Mr. Nobody",
"The Beach",
"Body of Lies"]

movie_list.each do |name|
	begin
		url = URI.parse(URI.escape(("http://www.omdbapi.com/?apikey=#{secret}&t=#{name}")))
		res = Net::HTTP.get_response(url)
		if res.is_a?(Net::HTTPSuccess)
			parsed = JSON.parse(res.body)
			runtime_h = parsed["Runtime"].gsub(" min","/").to_i / 60
			runtime_m = parsed["Runtime"].gsub(" min","/").to_i % 60
			puts "#{parsed["Title"]}\t#{parsed["Year"]}\t#{runtime_h}:#{runtime_m.to_s.rjust(2, "0")}\t#{parsed["Genre"].gsub(", ","/")}"
		end
	rescue Exception => e
		puts "#{"something bad happened"} #{e}"
	end
end
