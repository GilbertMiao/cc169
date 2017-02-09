require_relative 'linked_list'
require 'pry'

def reverse_list(head)
  return head if head.nil? || head.succ.nil?
  next_node = head.succ

  new_head = reverse_list(next_node)
  next_node.succ = head
  head.succ = nil
  new_head
end

list = LinkedList.new([1, 2, 3, 4])
list.head = reverse_list(list.head)
puts list.head.val
