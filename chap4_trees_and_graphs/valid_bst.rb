require_relative 'tree'
require 'pry'

def bst?(node)
  return true if node.nil? || (node.left.nil? && node.right.nil?)
  return false if (node.left && node.left.val > node.val) || (node.right && node.right.val <= node.val)
  return false unless bst?(node.left) && bst?(node.right)
  true
end

tree = Tree.new([3,2,1,5,7])
binding.pry

bst?(tree.root)
