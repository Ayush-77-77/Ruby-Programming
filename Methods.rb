# def sayHi(name, age =24)  # age has a default value

# puts "Hello User " + name + ", your age is " + age.to_s

# end

# puts "Top"
# sayHi ("Ayush")
# puts "Bottom"


# def cube(side)
 
#  return side*side*side;
# puts "statement after return will not be executed"
# end

# puts cube(3)


# we can also return two or more values from the methods

def multipleValue(num)
  return num*num, 30     # it will return an array of return values


end

puts multipleValue(2)
puts multipleValue(3)[1]    # it will print the second value of the returned values(array)


