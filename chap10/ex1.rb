#recursive shuffle

def shuffle(array)
  recursive_shuffle(array,[])
end

def recursive_shuffle (a, sa)
  if a==[]
    return sa
  end
  sa << a.delete_at(rand(0...a.size))
  recursive_shuffle(a, sa)
end


