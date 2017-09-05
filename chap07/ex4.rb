def is_leap(y)
  if (y%4==0 && y%100!=0) || (y%100 == 0 &&  y%400 == 0)
    return true
  end
  return false
end

puts "Please input years"
fy = gets.chomp.to_i
ly = gets.chomp.to_i
if fy < ly
  puts "leap years between #{fy} - #{ly}:"
  (fy..ly).each{|y| puts y if is_leap(y)}
else
  puts "you got confused with the years..."
end
