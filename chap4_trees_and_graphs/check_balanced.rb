require_relative 'tree'
require_relative 'node'
require 'pry'

def check_height(node)
    return -1 unless node
    left_height = check_height(node.left)
    right_height = check_height(node.right)
    height_diff = left_height - right_height

    return false if height_diff.abs > 1
    [left_height, right_height].max + 1
end

tree = Tree.new([3, 2, 1, 5, 7])
binding.pry
check_height(tree.root)
