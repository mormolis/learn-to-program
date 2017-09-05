pw = 70
t =[]
t << "Table of Contents"
t << "Chapter 1: Getting Started"
t << "page  1"
t << "Chapter 2: Numbers"
t << "page  9"
t << "Chapter 3: Letters"
t << "page 13"

puts t[0].center(pw)
puts t[1].ljust(pw/2) + t[2].rjust(pw/2)
puts t[3].ljust(pw/2) + t[4].rjust(pw/2)
puts t[5].ljust(pw/2) + t[6].rjust(pw/2)
