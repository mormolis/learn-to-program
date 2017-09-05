M = 'land'
o = 'water'
world = [ [o,o,o,o,o,o,o,o,o,o,o],
          [o,o,o,o,M,M,o,o,o,o,o],
          [o,o,o,o,o,o,o,o,M,M,o],
          [o,o,o,M,o,o,o,o,o,M,o],
          [o,o,o,o,o,M,M,o,o,o,o],
          [o,o,o,o,o,M,M,M,M,o,o],
          [o,o,o,o,M,M,M,M,M,M,M],
          [o,o,o,o,o,o,M,o,o,o,o],
          [o,o,o,o,o,M,M,M,M,M,M],
          [o,M,o,o,o,o,M,o,o,o,M],
          [o,o,o,o,o,o,M,M,o,o,o]]

def continent_size (world, x, y)

  if world[x][y] != 'land'
    return 0
  end




  size = 1
  world[x][y] = 'counted land'
  if x == (world.length-1) || y==(world[x].length-1) || x==0 || y==0
    return 1
  end


  size = size + continent_size(world, x-1, y-1)
  size = size + continent_size(world, x , y-1)
  size = size + continent_size(world, x+1, y-1)
  size = size + continent_size(world, x-1, y )
  size = size + continent_size(world, x+1, y )
  size = size + continent_size(world, x-1, y+1)
  size = size + continent_size(world, x, y+1)
  size = size + continent_size(world, x+1, y+1)
  size
end
puts continent_size(world, 5, 5)
