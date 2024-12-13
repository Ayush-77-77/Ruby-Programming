class MergeSort
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
      # unless (isValidInput(inputValue, i))
      #   puts "Invalid Input!! please enter the value as an integer again :"
      #   i=i-1;

      # else
      #   @array[i] = inputValue.to_i
      # end                                   
      # i+=1
    end                        # End of loop      
    mergeSort(@array, 0, @array.length-1)    # calling mergeSort to make a recursive call
   
  end                               # end of setArray method

  # def isValidInput(inputValue, i)
  #   if(inputValue.to_i==0)
  #     return false
  #   else
  #     return true
  #   end

  # end                                  # end of Isvalid Input method



  def mergeSort(array, low, high)
    
    return if(low >= high) 
    
    middle = (low + high) / 2
  
    mergeSort(array, low, middle)
    
    mergeSort(array, middle + 1, high)
    merge(array, low, middle, high)
  end                                    # end of mergeSort method 

  def merge(array, low, middle,high)
   temp_array =[]
   left = low
   right = middle + 1
   while(left <= middle && right <= high) 
   
     if array[left]<=array[right]
       temp_array.push(array[left])
       left +=1
     else
       temp_array.push(array[right])
       right+=1
     end
   end                                    
   
   while(left<=middle)
     temp_array.push(array[left])
     left+=1      
   end    
   while(right<= high)
     temp_array.push(array[right])
     right+=1
   end
   
   i =low
   while(i<=high) do
     @array[i] = temp_array[i-low]
     i+=1
   end
   
  end                                                # end of merge method
  
  def getArray()
    
    print @array
  end
end                                                   # end of class

# Program starts from here

print "Enter the size of array : "
size = gets.to_i                                       # input size of the array
merge_sort_object = MergeSort.new(size)
merge_sort_object.setArray()
merge_sort_object.getArray()

