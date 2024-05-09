# https://leetcode.com/problems/remove-element/
# @param {Integer[]} nums
# @param {Integer} val
# @return {Integer}
def remove_element(nums, val)
  nums.reject! { |item| item == val }.length
end
