#1768
# @param {String} word1
# @param {String} word2
# @return {String}
def merge_alternately(word1, word2)
    result = ""
    (0..word1.size-1).each do |i|
      if i < word2.size
        result << word1[i] << word2[i]
      else
        result << word1[i]
      end
    end
    result << word2.slice(word1.size, word2.size - word1.size) if word2.size > word1.size
    result
end
