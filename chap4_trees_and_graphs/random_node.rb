require_relative 'tree'
require 'pry'

def random_node(tree)
  arr = tree.preorder_traversal(tree.root, [])
  arr.sample
end

tree = Tree.new([3,2,1,5,7])

# tree.depth_first_search(3)
binding.pry
random_node(tree)
