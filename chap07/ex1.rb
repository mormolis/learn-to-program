#7.5 page 57 99 bottles
(3..99).reverse_each{ |n| puts "#{n} bottles of beer on the wall, #{n} bottles of beer.\nTake one down and pass it around, #{n -1} bottles of beer on the wall.\n\n" }
puts "2 bottles of beer on the wall, 2 bottles of beer.\nTake one down and pass it around, 1 bottle of beer on the wall.\n\n"
puts "1 bottle of beer on the wall, 1 bottles of beer.\nTake one down and pass it around, no more bottles of beer.\nGo to the store and buy some more, 99 bottles of beer on the wall.\n\n"
