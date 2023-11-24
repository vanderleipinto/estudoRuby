arr = [10, 4, 3, 50, 23, 90, 90, 10, 4 , 3]
max = []

arr = arr.sort!.uniq.reverse.dup

while max.length <3 do
  max << arr.delete_at(0)
end

puts max
