# <!-- Write a Ruby program to find the longest substring and it's length in a given string that contains only unique characters.

# For example: `pwwkew`
# Output: `wke`, 3 -->


class LongestSubstring
  def initialize(string)
    @string = string
  end

  def longest_subgstring
    longest_str = ""
    temp_str = ""
    @string.each_char do |character|
     unless temp_str.include?character 
       temp_str += character 
       if longest_str.length < temp_str.length
         longest_str = temp_str
       end
     else
        temp_str = character
     end
    
    end
    [longest_str, longest_str.length]
    # ashjdhhjds
  end
end

longest_string_object = LongestSubstring.new("pwwkew")
print longest_string_object.longest_subgstring
