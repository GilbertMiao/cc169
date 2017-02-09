require_relative 'linked_list'

def delete_middle(node)
  return false if node.succ.nil?
  node.val = node.succ.val
  node.succ = node.succ.succ
end
