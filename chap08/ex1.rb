a=[]
while true
  a << gets.chomp
  if a.last == ""
    a.pop
    break
  end
end

puts a.sort
