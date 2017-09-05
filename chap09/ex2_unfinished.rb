# NEEDS TO BE DONE (New Roman Numeral)

def old_roman_numeral(num)
  print "#{num} in Roman is "
  m=num/1000
  str = "M"*m
  num%=1000
  d=num/500
  str += "D"*d
  num %=500
  c=num/100
  str+="C"*c
  num%=100
  l=num/50
  str+="L"*l
  num%=50
  x=num/10
  str+="X"*x
  num%=10
  v=num/5
  str +="V"*v
  num %=5
  str+="I"*num

  print "#{str} \n"
end

old_roman_numeral(3)
old_roman_numeral(10)
old_roman_numeral(1000)
old_roman_numeral(19)
old_roman_numeral(62)
old_roman_numeral(40)
