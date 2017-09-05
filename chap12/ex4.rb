bdays ={}
File.open("bday_file.txt") do |f|
  f.each_line do |line|
    temp = line.split(",")

    temp[1],temp[2] = temp[2].chomp,temp[1]
    temp2= temp[2].split(" ")
    temp[2], temp[3] = temp2[0], temp2[1]


    bdays[temp[0].downcase] = "#{temp[3]} #{temp[2]} #{temp[1]}"

  end
end
print "Please input a name: "
name = gets.chomp.downcase
if bdays.has_key?(name)
  date = bdays[name].split(" ")

  puts "#{name}'s birthday is on #{bdays[name]} and his age is #{((Time.new - Time.new(date[2], date[1], date[0]))/(60*60*24*365)).to_i}"
else
  print "Sorry name not found!"
end
