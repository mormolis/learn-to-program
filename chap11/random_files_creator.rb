Dir.chdir ("/home/mormolis/temp")
(0..25).each{ |i|
  r=rand(4000..5000).to_s
  f=File.new("#{r}.txt", "w")
  f.puts "#{r}"
  f.close

  }
