print "Please input directory to save the files: "
dir = gets.chomp
Dir.chdir(dir)
print "Please input source directory: "
source_dir = gets.chomp
pic_names = Dir["#{source_dir}/**/*.{txt,TXT}"]

print "What would you like to call this batch? : "
batch_name = gets.chomp
print "\nDownloading #{pic_names.length} files: "
pic_number = 1
pic_names.each do |name|
  print "."
  new_name = "#{batch_name}#{pic_number}.txt"
  p new_name
  if File.exist?(new_name)
    puts "file #{new_name} already exists.\nTerminating the process..."
    exit()
  end

  File.rename(name, new_name)
  pic_number+=1
end
puts "\nDone!"
