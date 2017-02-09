require_relative 'linked_list'
require 'pry'

def list_sum(l1, l2)
  max_length = l1.length > l2.length ? l1.length : l2.length
  sum = 0
  l1_head = l1.head
  l2_head = l2.head
  (1..max_length).each do |i|
    # binding.pry

    if l1_head&.val.nil?
      sum += l2_head.val * (10 ** i)
    elsif l2_head&.val.nil?
      sum += l1_head.val * (10 ** i)
    else
      sum += (l1_head.val + l2_head.val) * (10 ** i)
    end
    l1_head = l1_head&.succ
    l2_head = l2_head&.succ
  end
  sum_arr = sum.to_s.split('').map(&:to_i).reverse
  LinkedList.new(sum_arr)
end

list_1 = LinkedList.new([1, 2, 3, 5])
list_2 = LinkedList.new([2, 3, 4])
puts list_sum(list_1, list_2)
