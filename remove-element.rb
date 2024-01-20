#27
# @param {Integer[]} nums
# @param {Integer} val
# @return {Integer}
def remove_element(nums, val)
    count = 0
    i = 0
    while(i < nums.size) do 
      break if nums[i].nil?
      if nums[i] == val
        count += 1
        ((i+1)...(nums.size)).each do |j|
          nums[j-1] = nums[j]
        end
       nums[-1*count] = nil
       puts nums.to_s
       else
       i += 1
       end
    end 
    nums.size - count
end
