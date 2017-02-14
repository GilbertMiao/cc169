require_relative 'node'
require 'pry'


# v = value, l = left, r = right, p = parent, d = depth
Node = Struct.new(:v, :l, :r, :parent, :d)

def array_to_bst(array, l, r, parent=nil, d=1)
  return if l > r
  mid = (l + r)/2
  node = Node.new(array[mid], nil, nil, nil, d)
  node.l = array_to_bst(array, l, mid - 1, node, d + 1)
  node.r = array_to_bst(array, mid + 1, r, node, d + 1)
  node.parent = parent
  node
end

def list_of_depth(tree)
  return [] if tree.root.nil?
  res = []
  current = []

  current << tree.root
  until current.empty?
    res << current
    parents = current
    current = []
    parents.each do |x|
      current << x.left if x.left
      current << x.right if x.right
    end
  end
  res
end


tree = array_to_bst([3,2,1,5,7])
binding.pry

list_of_depth(tree)
