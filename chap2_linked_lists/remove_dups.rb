# Write code to remove duplicates from an unsorted linked list
require_relative 'linked_list'
require 'pry'

def remove_dups(list)
  data_set = {}
  current = list.head
  previous = nil
  while current
    if data_set[current.val]
      previous.succ = current.succ
      list.length -= 1
    else
      data_set[current.val] = true
      previous = current
    end
    current = current.succ
  end

  list
end

list = LinkedList.new([1, 1, 2, 3, 4])
remove_dups(list)
puts list.length
