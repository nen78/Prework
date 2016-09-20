#Get the source file
puts "What's the source file?"
source = gets.chomp

#Get the destination file
puts "What's the destination file?"
destination = gets.chomp

#Read the source file
source_content = IO.read(source)

#Copy from source to destination
IO.write(destination, source_content)