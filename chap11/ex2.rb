#/media/mormolis/Data/music

require '../chap10/ex1.rb'
mp3 = Dir["/media/mormolis/Data/music/**/*.{mp3,MP3}"]
mp3 =shuffle(mp3)
File.open("playlist.m3u", "w") do |f|
  f.puts mp3
end
puts "Enjoy!"
