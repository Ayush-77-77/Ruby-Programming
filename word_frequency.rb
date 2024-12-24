# # Write a Ruby method word_frequency that takes an array of strings as input. Each string contains a sentence. The method should:
# 1. Count the frequency of each word across all the sentences (case-insensitive).
# 2. Return a hash where keys are the words, and values are their respective frequencies.


sentences = ["Hello world", "hello Ruby", "Ruby is awesome",  "World is big"]
new_sentences = sentences.join(' ')

new_sentences = new_sentences.split(' ')
hash = {}

new_sentences.each do |string|
  string.downcase!
  hash[string] += 1  
end
puts hash

