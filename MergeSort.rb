def mergeSort(array, low, high )

  middle = (low + high) / 2
  mergeSort(array, low, middle)
  mergeSort(array, middle + 1, high)
  merge(array, low, middle, high)
end

array = [4,5,6,2,3,1,5,6,8,8]
low = 0
high =  array.length-1
mergeSort(array, low, high )

