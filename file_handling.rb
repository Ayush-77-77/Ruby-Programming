# file = File.open("test.txt")
# content = file.read
# puts content
# file.close

# File.open("test.txt") do |file|
#   puts file.read
# end

# File.foreach("test.txt",'r') do |file| 
#   puts file
# end

file = File.open("number.txt",'w+')

begin
    print "Enter a number : "
    input = gets.chomp
    break if input.downcase == "y"
    file.puts(input) 
end while (true)
file.close

sum=0
File.foreach("number.txt") do |line|
#   sum += line.to_i
  p line
end
puts sum
file.close