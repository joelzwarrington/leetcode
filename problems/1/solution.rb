# @param {Integer[]} nums
# @param {Integer} target
# @return {Integer[]}
def two_sum(nums, target)
  nums_by_index = {}

  nums.each_with_index do |num, index|
    other_index = nums_by_index[target - num]

    return [other_index, index] if other_index

    nums_by_index[num] = index
  end
end
