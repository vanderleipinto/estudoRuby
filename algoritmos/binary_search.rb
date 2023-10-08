#arr = [12,43,674,23,85,23,6,76,213,555,32]

def binary_search(arr,num)
   arr.sort!
   low = 0
   high = arr.length - 1
   
   while low <= high
      mid = (low+high)/2
      guess = arr[mid]

      if guess == num
         return mid
      elsif num > guess
         low = mid + 1
      else
         high = mid -1
      end
   end
end
