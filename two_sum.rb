# @param {Integer[]} nums
# @param {Integer} target
# @return {Integer[]}
def two_sum(nums, target)
  nums.each_with_index { |item, i| return [i, i + 1] if nums[i] + nums[i + 1] == target }
end
