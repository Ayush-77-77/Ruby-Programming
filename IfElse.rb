# # name = "Ayush Gupta"
# # age =24

# # if age< 18
# #   puts "Not Eligible"
# # elsif age >=18 && age <=60
# #   puts "Eligible"
# # else
# #   puts "Retired"
# # end

# # // program to find maximum number among 3 number
# def max(num1,num2,num3)

#   if num1>num2 && num1>num3
#     return  num1;
#   elsif num2 > num1 && num2> num3
#     return num2;
#   else
#     return  num3;
#   end
# end

# greater = max(234,13,1222)
# puts "Geater number is : "+ greater.to_s


# unless 3==3
#   puts "false"
# else
#   puts "true"
# end


require 'pry-byebug'

def isogram?(string)
  original_length = string.length
  string_array = string.downcase.split

  binding.pry

  unique_length = string_array.uniq.length
  original_length == unique_length
end

isogram?("Odin")