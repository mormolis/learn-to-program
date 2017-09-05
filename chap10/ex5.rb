#

def bottle_of_beer_song(x)
  if x.is_a? Integer
    (3..x).reverse_each{ |n| puts "#{n} bottles of beer on the wall, #{n} bottles of beer.\nTake one down and pass it around, #{n -1} bottles of beer on the wall.\n\n" }
    puts "2 bottles of beer on the wall, 2 bottles of beer.\nTake one down and pass it around, 1 bottle of beer on the wall.\n\n"
    puts "1 bottle of beer on the wall, 1 bottles of beer.\nTake one down and pass it around, no more bottles of beer.\nGo to the store and buy some more, #{x} bottles of beer on the wall.\n\n"
  else
    puts "You need do input an integer"
  end
end

bottle_of_beer_song(15)
