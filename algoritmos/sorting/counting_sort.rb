def counting_sort(arr)
  count_array = [0] * (arr.max + 2)
  
  arr.each do |i|
    count_array[i] += 1
  end

  for i in 1..(arr.max+ 1)    
    count_array[i] += count_array[i - 1]
  end

  output_array = [0] * arr.length

  (arr.length - 1).downto(0) do |i|
    output_array[count_array[arr[i]]-1] = arr[i]
    count_array[arr[i]] -=1
  end

  return output_array
end

<<<<<<< HEAD
print counting_sort([1, 4, 1, 2, 7, 5, 2])
=======
print counting_sort([1, 4, 1, 2, 7, 5, 2])
>>>>>>> 6df437fd0fd3ed8fb97595128176047de99a823f
