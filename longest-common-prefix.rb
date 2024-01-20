#14
# @param {String[]} strs
# @return {String}
def longest_common_prefix(strs)
    first = strs.shift
    first_size = first.size
    pref = ""
    (0..first_size).each do |i|
      do_break = false
      pref = first[0..i]
      strs.each do|s| 
        if !s.start_with?(pref) 
          pref = (i==0 ? "" : pref[0..-2])
          do_break = true 
        end
      end
      break if do_break
    end
    return pref
end
