# @param {Integer[]} nums
# @param {Integer} target
# @return {Integer[]}
def two_sum(nums, target)
  nums.each_with_index do |a, i|
    break if a > target

    offset = i + 1

    nums[offset..].each_with_index do |b, j|
      return [i, offset + j] if a + b == target
    end
  end
end
