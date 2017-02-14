require_relative 'minimal_tree'
require 'pry'

def successor(node)
  return nil if node.nil?
  r =  node.right
  return nil if r.nil?
  if r
    r = r.left while r.left
    return r
  end
  current = node
  parent = current.parent
  while parent && parent.left != current
    current = parent
    parent = parent.parent
  end
  parent
end


arr = [1,2,3,4,5]
binding.pry

test = minimal_tree(arr)
successor(test)
