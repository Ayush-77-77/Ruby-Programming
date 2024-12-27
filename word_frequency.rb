# # Write a Ruby method word_frequency that takes an array of strings as input. Each string contains a sentence. The method should:
# 1. Count the frequency of each word across all the sentences (case-insensitive).
# 2. Return a hash where keys are the words, and values are their respective frequencies.

class WordFrequencyCounter
  def initialize(sentences)
    @word_frequencies = calculate_word_frequencies(sentences)
  end

  # Method to calculate word frequencies
  def calculate_word_frequencies(sentences)
    word_frequencies = Hash.new(0)
    sentences.join(' ').downcase.split.each do |word|
      word_frequencies[word] += 1
    end
    word_frequencies
  end

  # Method to get frequency of a specific word
  def get_word_count(word)
    @word_frequencies[word.downcase]
  end

  # Method to return all word frequencies
  def all_word_frequencies
    @word_frequencies
  end
end


sentences = ["Hello world", "hello Ruby", "Ruby is awesome", "World is big"]

frequency_counter = WordFrequencyCounter.new(sentences)

# Input from user
print "Enter the word: "
word = gets.chomp


puts "All word frequencies: #{frequency_counter.all_word_frequencies}"
puts "Count of '#{word}': #{frequency_counter.get_word_count(word)}"
