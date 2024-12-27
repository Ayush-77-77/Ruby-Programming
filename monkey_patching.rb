# Define a class with a method that returns a greeting
class Greeting
  def say_hello(name)
      "Hello, #{name}"
  end
end

# Instantiate a Greeting object and call the say_hello method
greeting = Greeting.new
puts greeting.say_hello("Rohan")  # Output: "Hello, Rohan"

# Now, let's monkey patch the Greeting class by modifying the say_hello method
class Greeting
  def say_hello(name)
    "Hi there, #{name}"
  end
end

puts greeting.say_hello("Rahul")  # Output: "Hi there, Rahul"
# Call the modified say_hello method on the same Greeting object
