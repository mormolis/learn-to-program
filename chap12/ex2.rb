puts "please input year"
year = gets.chomp
puts "please input month"
month = gets.chomp
puts "please input day"
day = gets.chomp
times=((Time.new - Time.new(year,month,day))/(60*60*24*365))
puts "SPANK "*times
