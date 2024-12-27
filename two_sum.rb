class TwoSum
  attr_accessor :nums
  def two_sum(target)
    hash = {}
    nums.each_with_index do |element,index|
      if hash[(target - element)]
        return [hash[target - element],index]
      else
        hash[element] = index
      end
    end
    [-1,-1]
  end
end

two_sum_obj = TwoSum.new
two_sum_obj.nums = [2,7,11,15] 
print 'Enter the target elements : '
target = gets.chomp.to_i
p two_sum_obj.two_sum(target)