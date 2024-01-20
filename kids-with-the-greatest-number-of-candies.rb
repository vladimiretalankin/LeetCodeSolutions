#1431
# @param {Integer[]} candies
# @param {Integer} extra_candies
# @return {Boolean[]}
def kids_with_candies(candies, extra_candies)
    result = []
    max = candies.max
    candies.each_index do |i|
      if candies[i] + extra_candies >= max
        result[i] = true
      else result[i] = false
      end
    end
    result
end
