def buble_sort(arr)

  size = arr.length
  
  loop do
    swapped = false

    (size-1).times do |i|
      if arr[i] > arr[i+1]
        arr[i], arr[i+1] = arr[i+1], arr[i]
        swapped = true
      end      
    end
  break unless swapped
end
return arr
end

arr = [8,7,5,1,3,2,9,4]
p buble_sort(arr)

