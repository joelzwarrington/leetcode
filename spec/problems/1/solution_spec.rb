require_relative "../../../problems/1/solution"

RSpec.describe "Problem 1" do
  subject { two_sum(nums, target) }

  context "given nums = [2,7,11,15], target = 9" do
    let(:nums) { [2, 7, 11, 15] }
    let(:target) { 9 }

    it { is_expected.to match([0, 1]) }
  end

  context "given nums = [3,2,4], target = 6" do
    let(:nums) { [3, 2, 4] }
    let(:target) { 6 }

    it { is_expected.to match([1, 2]) }
  end

  context "given nums = [3,3], target = 6" do
    let(:nums) { [3, 3] }
    let(:target) { 6 }

    it { is_expected.to match([0, 1]) }
  end
end
