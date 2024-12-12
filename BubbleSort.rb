def bubble_sort(array)
  
 isSorted = true
  (0...array.length).each do |i|
      isSorted = true
    (i+1...array.length).each do |j|
      if(array[i]>array[j])
        swap(array,i,j)
        isSorted=false;
      end
    end
    break if(isSorted==true)
  end
  p array
end

def swap(array, i,j)
  temp = array[i]
  array[i]=array[j]
  array[j]=temp  
end



bubble_sort([4,3,78,2,0,2])