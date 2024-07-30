require_relative "../../../problems/3/solution"

RSpec.describe "Problem 3" do
  subject { length_of_longest_substring(s) }

  context "given s = 'abcabcbb'" do
    let(:s) { "abcabcbb" }

    it { is_expected.to eq(3) }
  end

  context "given s = 'bbbbb'" do
    let(:s) { "bbbbb" }

    it { is_expected.to eq(1) }
  end

  context "given s = 'pwwkew'" do
    let(:s) { "pwwkew" }

    it { is_expected.to eq(3) }
  end
end
