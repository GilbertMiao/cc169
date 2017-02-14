require_relative 'minimal_tree'
require 'pry'

def first_common_parent(first, second)
  delta = n1.depth - n2.depth
  first = delta > 0 ? n2 : n1
  second = delta > 0 ? n1 : n2
  delta.abs.times { second = second.parent }

  while first != second && first && second
    first = first.parent
    second = second.parent
  end

  first.nil? || second.nil? ? nil : first
end



arr = [1,2,3,4,5]

test = minimal_tree(arr)
first = test.left.left
second = test.right
binding.pry
first_common_parent(first, second)
