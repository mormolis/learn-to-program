#I =1
#C = 100
#V =5
#D = 500
#X = 10
#M = 1000
#L = 50

def roman_to_integer(s)
  if !s.is_a? String
    print "Please use a string "
    return false
  end
  roman_letters = {"I" => 1,"C" => 100,"V" =>5,"D"=>500,"X"=>10,"M"=>1000,"L"=>50}
  sum=0
  (0...s.length).each{|i|
    if roman_letters[s[i].upcase]==nil
      print "Character is not recognised as roman... sorry! "
      return false
    else
      sum = sum + roman_letters[s[i].upcase]
    end
  }
  return sum
end

puts roman_to_integer("XXI")
puts roman_to_integer("XV")
puts roman_to_integer("vii")
puts roman_to_integer("aaa")
puts roman_to_integer(125)
