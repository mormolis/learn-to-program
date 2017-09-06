
def profile(block_description, status, &block)
  if status
    start_time = Time.new
    block.call
    duration = Time.new - start_time
    puts "#{block_description}: #{duration} seconds"
  end
end
status = true # change to false to disable profiling
profile("25000 doublings", status) do
  number = 1
  25000.times do
    number = number+number
  end
  puts "#{number.to_s.length} digits"
end

profile("count to a million", status) do
  number =0
    1000000.times do
      number+=1
    end
end
