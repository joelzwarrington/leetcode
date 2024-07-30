class ListNode
  include Comparable

  class << self
    def from_list(*args)
      args.reverse.reduce(nil) do |acc, num|
        new(num, acc)
      end
    end
  end

  attr_accessor :val, :next

  def initialize(val = 0, _next = nil)
    @val = val
    @next = _next
  end

  def <=>(other)
    to_a <=> other.to_a
  end

  def to_a
    [val, *self.next&.to_a]
  end
end

# @param {ListNode} l1
# @param {ListNode} l2
# @return {ListNode}
def add_two_numbers(l1, l2)
  sum = l1.to_a.join.to_i + l2.to_a.join.to_i
  ListNode.from_list(*sum.digits)
end
