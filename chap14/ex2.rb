def grandfathers_clock(&block)
  now = Time.new.hour%12
  now.times{
    block.call
  }
end
p Time.new.hour
grandfathers_clock{
  puts "Dong"
}

grandfathers_clock{
  puts "#{Time.new.hour%12} is the hour"
}
