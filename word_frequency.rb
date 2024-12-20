sentences = ["Hello world", "hello Ruby", "Ruby is awesome",  "World is big"]
new_sentences = sentences.join(' ')

new_sentences = new_sentences.split(' ')
hash = Hash.new(0)

new_sentences.each do |string|
  string.downcase!
  hash[string] += 1  
end
puts hash

