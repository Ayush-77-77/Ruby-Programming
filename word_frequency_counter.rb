# Write a Ruby method word_frequency_counter(input) that counts the frequency of words in a dynamic, deeply nested data structure. The input can be any combination of:
# 1. A string.
# 2. An array containing strings, hashes, or other arrays.
# 3. A hash with string or symbol keys/values, or nested arrays/hashes.

# The method should:
# 1. Extract words from:
# Strings directly.
# String and symbol keys in hashes.
# String values in hashes.
# Strings nested inside arrays.
# 2. Count the frequency of each word (case-insensitive).
# 3. Return a hash where keys are the words, and values are their respective frequencies.
# 
# Method to normalize and split a string into words


module WordFrequency
  def self.extract_words(str)
    str.downcase.scan(/\b[a-z]+\b/)
  end

  def self.count_words(data, word_count = Hash.new(0))
    case data
    when String
      extract_words(data).each { |word| word_count[word] += 1 }
    when Array
      data.each { |element| count_words(element, word_count) }
    when Hash
      data.each do |key, value|
        # next if key.is_a?(Symbol)
        count_words(key.to_s, word_count)
        count_words(value, word_count)
      end
    end
    word_count
  end
  def self.word_frequency_counter(input)
    count_words(input)
  end
end

input_1 = "Hello world, welcome to Ruby!"
input_2 = {
  "hello world" => "Ruby is fun",
  details: {
    description: "Ruby rocks in the programming world",
    :"extra info" => ["hello again", "world of Ruby"]
  }
}
input_3 = [
  "Hello world",
  { 
    "Ruby language" => "is fun",
    details: [
      "Ruby rocks", 
      { "hello again" => "world is round" }
    ]
  },
  [
    "Complex structures are interesting",
    { more_data: ["Hello", "world of Ruby"] }
  ]
]

pp WordFrequency.word_frequency_counter(input_1)
puts
pp WordFrequency.word_frequency_counter(input_2)
puts
pp WordFrequency.word_frequency_counter(input_3)
