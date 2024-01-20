#217
# @param {Integer[]} nums
# @return {Boolean}
def contains_duplicate(nums)
   nums.sort!
    nums.each_index do |i|
      break if i == nums.size-1
      return true if nums[i]==nums[i+1]
    end
    return false
end
