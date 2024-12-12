# Implemented a Caesar cipher that takes in a string 
# and the shift factor and then outputs the modified string using a right shift:

def caesar_cipher(string, shift)

  new_str= ""
  string.each_char do |ch|
   if ch>='a'&&ch<='z'
        ascii_value =  smallChar(ch, shift)
        # new_str += ascii_value.chr
        print ascii_value.chr
  elsif ch>='A'&&ch<='Z'
      ascii_value =  largeChar(ch, shift)
    #   new_str += ascii_value.chr
      print ascii_value.chr
   else
      # new_str += ch
      print ch
   end
  end

end


# Right Shift 

# def smallChar(ch, shift)
#   ascii_value = (ch.ord + shift)
#   if (ascii_value > 122 )
#     return 96 + (ascii_value % 122)
#   else
#     return (ascii_value % 123)
#   end
# end

# def largeChar(ch, shift)
#   ascii_value = (ch.ord + shift)
#   if (ascii_value > 90)
#     return 64 + (ascii_value % 90)
#   else
#     return (ascii_value % 91)
#   end
# end

# left shift 

 def smallChar(ch, shift)
  ascii_value = (ch.ord - shift)
  if (ascii_value < 97 )
    return ((ascii_value % 97) + 26)
  else
    return (ascii_value % 123)
  end
end

def largeChar(ch, shift)
  ascii_value = (ch.ord - shift)
  if (ascii_value < 65)
    return ((ascii_value % 65) + 26)
  else
    return (ascii_value % 91)
  end
end


caesar_cipher("Bmfy f xywnsl!", 5)