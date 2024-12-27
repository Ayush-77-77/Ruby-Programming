# Understanding the Define_method


class Square
end

Square.define_method(:area) do |length|
    puts "Area = #{length * length}"
end

Square.new.area(5)
# Output: Area = 25



# Class_eval for Defining Methods

class Square
end

Square.class_eval do
    def area(length)
        puts "Area = #{length * length}"
    end
end

Square.new.area(5)
# Output: Area = 25



#Instance_eval for Defining Methods

class Square
end

square = Square.new

square.instance_eval do
    def area(length)
        puts "Area = #{length * length}"
    end
end

square.area(5)
# Output: Area = 25

#  Understanding the Method_missing
#  
class Square
  def method_missing(method_name, *args, &block)
      if method_name.to_s.start_with?("area_")
          length = method_name.to_s.gsub("area_", "").to_i
          puts "Area = #{length * length}"
      else
          super
      end
  end
end

Square.new.area_5
# Output: Area = 25
