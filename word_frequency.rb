# # Write a Ruby method word_frequency that takes an array of strings as input. Each string contains a sentence. The method should:
# 1. Count the frequency of each word across all the sentences (case-insensitive).
# 2. Return a hash where keys are the words, and values are their respective frequencies.


class WordFrequencyCounter
  def initialize(sentences)
    @sentences = sentences
  end
  def words_frequency_count()
    words = @sentences.join(' ').downcase.split(' ')
    hash = Hash.new(0)
    words.each {|word| hash[word] += 1}
    hash  # return value
  end
  def word_count(word)
    words = @sentences.join(' ').downcase.split(' ')
    words.count(word)    # return value
  end

end


sentences = ["Hello world", "hello Ruby", "Ruby is awesome",  "World is big"]

frequency_counter = WordFrequencyCounter.new(sentences)   # creating a object
print "Enter the word : "
word = gets.chomp
puts "#{word} : #{frequency_counter.word_count(word)}"

