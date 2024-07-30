# @param {String} s
# @return {Integer}
def length_of_longest_substring(s)
  longest = 0
  seen = {}
  chars = s.chars

  i = 0

  while i < chars.length
    chars[i...].each_with_index do |char, j|
      longest = [j, longest].max

      if seen[char]
        seen = {}
        break
      else
        seen[char] = true
      end
    end

    i += 1
  end

  longest
end
