def dictionary_sort(array)
  recursive_sort(array,[])
end

def recursive_sort (ua, sa)
  if ua==[]
    return sa
  end
  min=ua[0]
  pos=0
  (1...ua.length).each{ |i|
    if ua[i].upcase<min.upcase
      min = ua[i]
      pos = i
      end}

      sa << min
      ua.delete_at(pos)
      recursive_sort(ua, sa)

end

puts dictionary_sort(["a","g","d","A","B","w","a"])
