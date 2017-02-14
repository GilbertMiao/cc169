def subtree?(tree, subtree)
  if tree.nil?
    return false # empty tree means we've searched and haven't found a match
  elsif subtree.nil?
    return true # empty subtree is a subtree
  elsif tree.v == subtree.v && matching_trees?(tree, subtree)
    return true # roots are equal, and are matching trees
  end

  return subtree?(tree.l, subtree) || subtree?(tree.r, subtree)
end

def matching_trees?(n1, n2)
  if n1.nil? && n2.nil?
    return true # nothing left to search, both must be matching trees
  elsif n1.nil? ^ n2.nil?
    return false # trees are different left, not matching
  elsif n1.v != n2.v
    return false # trees have different values, not matching
  else
    # recurse through left and right sides of binary tree
    return matching_trees?(n1.l, n2.l) && matching_trees?(n1.r, n2.r)
  end
end
