#724
# @param {Integer[]} nums
# @return {Integer}
def pivot_index(nums)
    size = nums.size 
    nums.each_index do |i|
      left = (i==0) ? 0 : nums.slice(0,i).sum
      right = (i==nums.size-1) ? 0 : nums.slice(i+1, size-i).sum
      puts "l: #{left}, r: #{right}"
      return i if left == right
    end
    return -1
end
