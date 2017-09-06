$identation_level=0
def log(description, &block)
  puts "  "*$identation_level + "I am about to run the #{description} block..."
  ret = block.call
  puts "  "*$identation_level +"I am done with the block #{description} and it returned #{ret}"
end

log("FIRST"){
  $identation_level+=1
  puts "  "*$identation_level +"First first first  aaaand..."
  log("NESTED"){
    $identation_level+=1
    puts "  "*$identation_level +"Nested nested nested..."
    $identation_level-=1
     "#n3st3d"
  }
   $identation_level-=1
   "#f1r5t"
}
