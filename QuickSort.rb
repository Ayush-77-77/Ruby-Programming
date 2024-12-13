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
  def quickSort(array, low, high)
    if(low < high)
      partition=arrayPartition(array, low, high)
      quickSort(array,low, partition-1)
      quickSort(array, partition+1, high)
    end
  end                                        # end of quickSort method

  # finding the partition of the array that will arrange the smaller value at the left side and larger value at the right side
  def arrayPartition(array, low, high)       
    pivot = array[low]
    i =low 
    j=high
    while (i<j)
      i+=1 while (array[i]<=pivot && i <= high-1)
      j-=1 while(array[j]>pivot && j >= low + 1)
      if(i<j)
          swap(array, i, j)    # swapping the values 
      end
    end
    swap(array, low, j) 
    return j
  end                            # end of arrayPartition
  
  def swap(array, i, j)                         # swap method
     array[i],array[j]=array[j],array[i]
  end

  
  def getArray()                             
     print @array                                # printing the array
  end                                         

end                                         # end of QuickSort class

print "Enter the size of an array : "
size = gets.to_i
quick_sort=QuickSort.new(size)
quick_sort.setArray()
quick_sort.getArray()
