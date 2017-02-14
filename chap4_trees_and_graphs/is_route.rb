require_relative 'tree'
require 'pry'
def route?(tree, n1, n2)
  return true if n1 == n2
  bfs_queue = []
  visited = {}
  start = tree.breadth_first_search(n1)
  bfs_queue.push start
  while bfs_queue.size.nonzero?
    current = bfs_queue.shift
    return true if current.val == n2
    visited[current] ? break : visited[current] = true
    bfs_queue.push(current.left) if current.left
    bfs_queue.push(current.right) if current.right
  end
  false
end

tree = Tree.new([3,2,1,5,7])

# tree.depth_first_search(3)
binding.pry
route?(tree, 3, 2)

# tree.breadth_first_search(4)
