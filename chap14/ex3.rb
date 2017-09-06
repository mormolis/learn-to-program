def log(description, &block)
  puts "I am about to run the #{description} block..."
  ret = block.call
  puts "I am done with the block #{description} and it returned #{ret}"
end

log("FIRST"){
  puts "First first first  aaaand..."
  log("NESTED"){
    puts "Nested nested nested..."
     "#n3st3d"
  }
   "#f1r5t"
}
