#
require './ex3.rb'

def bottle_of_beer_song(x)
  if x.is_a? Integer
    (3..x).reverse_each{ |n| puts "#{english_number(n)} bottles of beer on the wall, #{english_number(n)} bottles of beer.\nTake one down and pass it around, #{english_number(n -1)} bottles of beer on the wall.\n\n" }
    puts "Two bottles of beer on the wall, Two bottles of beer.\nTake one down and pass it around, one bottle of beer on the wall.\n\n"
    puts "One bottle of beer on the wall, one bottles of beer.\nTake one down and pass it around, no more bottles of beer.\nGo to the store and buy some more, #{english_number(x)} bottles of beer on the wall.\n\n"
  else
    puts "You need do input an integer"
  end
end

bottle_of_beer_song(15)
