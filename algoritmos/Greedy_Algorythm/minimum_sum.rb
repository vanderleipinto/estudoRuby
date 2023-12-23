#https://www.geeksforgeeks.org/minimum-sum-choosing-minimum-pairs-array/
def minSum(a)
  a.min * (a.length-1)
end

arr = [3, 6, 2, 8, 7, 5];  
puts minSum(arr)
