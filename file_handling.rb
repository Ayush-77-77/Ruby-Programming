# file = File.open("test.txt")
# content = file.read
# puts content
# file.close

File.open("test.txt") do |file|
  puts file.read
end