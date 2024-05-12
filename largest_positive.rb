# https://leetcode.com/problems/largest-positive-integer-that-exists-with-its-negative/?envType=daily-question&envId=2024-05-03
# @param {Integer[]} nums
# @return {Integer}
def find_max_k(nums)
  ret = []
  nums.each { |num| ret << num if nums.include?(num * -1) }
  ret.max || -1
end
