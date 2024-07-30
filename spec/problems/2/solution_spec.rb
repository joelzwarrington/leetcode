require_relative "../../../problems/2/solution"

RSpec.describe "Problem 2" do
  subject { add_two_numbers(l1, l2) }

  context "given l1 = [2,4,3], l2 = [5,6,4]" do
    let(:l1) { ListNode.from_list(2, 4, 3) }
    let(:l2) { ListNode.from_list(5, 6, 4) }

    it { is_expected.to eq(ListNode.from_list(7, 0, 8)) }
  end

  context "given l1 = [0], l2 = [0]" do
    let(:l1) { ListNode.from_list(0) }
    let(:l2) { ListNode.from_list(0) }

    it { is_expected.to eq(ListNode.from_list(0)) }
  end

  context "given l1 = [9,9,9,9,9,9,9], l2 = [9,9,9,9]" do
    let(:l1) { ListNode.from_list(9, 9, 9, 9, 9, 9, 9) }
    let(:l2) { ListNode.from_list(9, 9, 9, 9) }

    it { is_expected.to eq(ListNode.from_list(8, 9, 9, 9, 0, 0, 0, 1)) }
  end
end
