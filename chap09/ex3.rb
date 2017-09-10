def new_roman_numeral(n)
  # 4, 9, 40, 90, 400, 900

  str =""
  str+= "M"* (n/1000) #1000
  n = n%1000
  str+="CM"*(n/900) #900
  n = n%900
  str+="D"*(n/500)#500
  n = n%500
  str+="CD"*(n/400) #400
  n = n%400
  str+="C"*(n/100) #100
  n =n%100
  str+="XC"*(n/90) #90
  n =n%90
  str+="L"*(n/50)#50
  n=n%50
  str+="XL"*(n/40) #40
  n=n%40
  str+="X"*(n/10) #10
  n=n%10
  str+="IX"*(n/9) #9
  n = n%9
  str += "V"*(n/5) #5
  n=n%5
  str += "IV"*(n/4)#4
  n=n%4
  str +="I"*n #1
  str
end

puts new_roman_numeral(1944)
