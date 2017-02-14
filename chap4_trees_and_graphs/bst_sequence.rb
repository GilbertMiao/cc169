require_relative 'tree'
require 'pry'
# implemented via BFS with queue
# used node depth to organize nodes by depth
# then generate the arrays based on permutation of those sets
def bst_sequences(node)
    depth = Hash.new { |h, k| h[k] = [] }
    q = []
    q << node

    # use BFS to group nodes by depth
    until q.empty?
        current = q.shift
        depth[current.d] << current.v
        q << current.l if current.l
        q << current.r if current.r
    end
    depth = depth.map { |k, v| depth[k] = v.permutation.to_a }
    # return all the permutations of nodes
    solution = depth.first.first.product(*(depth[1..-1]))
    solution.map!(&:flatten)
end

tree = Tree.new([3,2,1,5,7])
binding.pry

bst_sequences(tree.node)
