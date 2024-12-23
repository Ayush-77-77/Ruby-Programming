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
