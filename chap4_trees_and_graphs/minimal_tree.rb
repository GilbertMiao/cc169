require_relative 'tree'
require_relative 'node'
require 'pry'

def minimal_tree(arr)
  return Node.new(arr.first) if arr.size == 1
  return nil if arr.empty?
  mid = arr.size / 2

  small = arr[0..(mid - 1)]
  big = arr[(mid + 1)..-1]
  node = Node.new(arr[mid])
  node.left = minimal_tree(small)

  node.left.parent = node if node.left
  node.right = minimal_tree(big)
  node.right.parent = node if node.right
  node
end

arr = [1,2,3,4,5]
minimal_tree(arr)
