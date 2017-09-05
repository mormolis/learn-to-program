require '../chap10/ex1.rb'
mp3 = Dir["/media/mormolis/Data/music/**/*.{mp3,MP3}"]
mp3 =shuffle(shuffle(shuffle(mp3))) #thats the only thing I can think of...
File.open("mixed_up_playlist.m3u", "w") do |f|
  f.puts mp3
end
puts "Enjoy!"
