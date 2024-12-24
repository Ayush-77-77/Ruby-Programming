# Implement a method #substrings that takes a word as the first argument and then an array of valid substrings (your dictionary) as the second argument. It should return a hash listing each substring (case insensitive) that was found in the original string and how many times it was found.




def sub_string(string, dictonary)
  hash=Hash.new(0)
    
  dictonary.each do |word|
      
    if string.include?word
      hash[word] = 1 
    end
      
  end  
  puts hash
end
dictionary = ["below","down","go","going","horn","how","howdy","it","l","low","own","part","partner","sit","below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
sub_string("below", dictionary)
