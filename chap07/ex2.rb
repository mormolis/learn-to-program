puts "Say something to deaf grandma!"
ans = gets.chomp
while true
  if ans!=ans.upcase
    puts "HUH?! SPEAK UP, SONNY!"
  elsif ans == "BYE"
    break
  else
    puts "NO, NOT SINCE #{rand(1930..1950)}!"
    puts "Say something else to deaf grandma!"
  end
  ans = gets.chomp
end
puts "BYE SONNY!"
