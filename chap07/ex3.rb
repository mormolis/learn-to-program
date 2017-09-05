puts "Say something to deaf grandma!"
ans = gets.chomp
count =0
while true
  if ans!=ans.upcase
    puts "HUH?! SPEAK UP, SONNY!"
    count =0
  elsif ans == "BYE"
    count+=1
    if count <3
      puts "HUH?! SPEAK UP, SONNY!"
    else
      break
    end
  else
    count =0
    puts "NO, NOT SINCE #{rand(1930..1950)}!"
    puts "Say something else to deaf grandma!"
  end
  ans = gets.chomp
end
puts "BYE SONNY!"
