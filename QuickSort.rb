class QuickSort
  @array=Array.new
  def initialize(size)
    @array = Array.new(size)
  end

  def setArray()
    i=0
    while (i < @array.length)  do     # input the values inside array
      print "Enter the value of array[#{i}] : "
      inputValue = gets
      begin
       @array[i]= Integer(inputValue)
       i+=1  
      rescue StandardError
       puts "Invalid Input!! please enter the value as an integer again :"
      end
    end                        # End of loop      
    # quickSort(@array, 0, @array.length-1)    # calling quickSort to make a recursive call
  end                                       # end of setArray Method

  
  def getArray()                             
     print @array                                # printing the array
  end                                         

end                                         # end of QuickSort class

print "Enter the size of an array : "
size = gets.to_i
quick_sort=QuickSort.new(size)
quick_sort.setArray()
quick_sort.getArray()
