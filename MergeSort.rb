
def mergeSort(array, low, high)

  return if(low >= high) 

  middle = (low + high) / 2
  
  mergeSort(array, low, middle)

  mergeSort(array, middle + 1, high)
  merge(array, low, middle, high)
end

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
    array[i] = temp_array[i-low]
    i+=1
  end

end

array = [4,5,6,2,3,1,5,6,8,8]
low = 0
high =  array.length-1
mergeSort(array, low, high )
p array

