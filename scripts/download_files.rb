require 'open-uri'

fonts = [
"https://www.omicronlab.com/download/fonts/kalpurush.ttf",
"https://www.omicronlab.com/download/fonts/kalpurush%20ANSI.ttf",
"https://www.omicronlab.com/download/fonts/Siyamrupali.ttf",
"https://www.omicronlab.com/download/fonts/Siyam%20Rupali%20ANSI.ttf",
"https://www.omicronlab.com/download/fonts/AponaLohit.ttf",
"https://www.omicronlab.com/download/fonts/SolaimanLipi_20-04-07.ttf",
"https://www.omicronlab.com/download/fonts/Bangla.ttf",
"https://www.omicronlab.com/download/fonts/AdorshoLipi_20-07-2007.ttf",
"https://www.omicronlab.com/download/fonts/BenSen.ttf",
"https://www.omicronlab.com/download/fonts/BenSenHandwriting.ttf",
"https://www.omicronlab.com/download/fonts/Nikosh.ttf",
"https://www.omicronlab.com/download/fonts/NikoshBAN.ttf",
"https://www.omicronlab.com/download/fonts/NikoshGrameen.ttf",
"https://www.omicronlab.com/download/fonts/NikoshLight.ttf",
"https://www.omicronlab.com/download/fonts/NikoshLightBan.ttf",
"https://www.omicronlab.com/download/fonts/akaashnormal.ttf",
"https://www.omicronlab.com/download/fonts/mitra.ttf",
"https://www.omicronlab.com/download/fonts/sagarnormal.ttf",
"https://www.omicronlab.com/download/fonts/muktinarrow.ttf",
"https://www.omicronlab.com/download/fonts/Mukti_1.99_PR.ttf",
"https://www.omicronlab.com/download/fonts/Lohit_14-04-2007.ttf",
"https://www.bd.undp.org/content/dam/bangladesh/img/News/news2018/UN%20bangla.ttf"
]

begin
	fonts.each do |font|
		font_name = font.split(/\//).last.gsub('%20', ' ')
		puts "Downloading #{font_name} ..."
		read_font = open(font)
		File.write("#{font_name}", read_font)
	end
rescue Exception => e
	puts e
end
