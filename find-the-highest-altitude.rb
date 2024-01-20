#1732
# @param {Integer[]} gain
# @return {Integer}
def largest_altitude(gain)
    alt = 0
    maxalt = 0
    gain.each do |diff|
      alt += diff
      maxalt = alt if alt > maxalt
    end
    maxalt
end
