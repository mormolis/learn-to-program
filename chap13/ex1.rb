class Array
  def shuffle
    temp=self.clone
    sa=[]
    while temp.size > 0
      sa << temp.delete_at(rand(0...temp.size))
    end
    return sa
  end
end
a=[1,2,3,4,5,6]
p a.shuffle
p a

class Integer
  def factorial
    def rec_fac(n)
      if n==0
        return 1
      else
        return n*rec_fac(n-1)
      end
    end
    n=self
    return rec_fac(n)
  end

  def to_roman #old version
    num = self
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
  end
end

p 10.factorial
p 163.to_roman
