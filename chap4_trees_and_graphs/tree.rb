require_relative 'node'
require 'pry'
class Tree
  attr_accessor :root, :height

  def initialize(arr)
    from_arr(arr)
    @height = tree_height(@root)
  end

  def insert(value)
    new_node = Node.new(value)
    if @root.nil?
      @root = new_node
      return
    end

    insert_at_node(@root, new_node)
  end

  def depth_first_search(v)
    return true if @root.val == v
    search_at_node(@root, v)
  end

  def breadth_first_search(v)
    bfs_search_at_node(@root, v)
  end

  def preorder_traversal(node, arr)
    return arr if node.nil?
    arr << node.val
    preorder_traversal(node.left, arr)
    preorder_traversal(node.right, arr)
  end

  def in_order_traversal(node, arr)
    return arr if node.nil?
    in_order_traversal(node.left, arr)
    arr << node.val
    in_order_traversal(node.right, arr)
  end

  def post_order_traversal(node, arr)
    return arr if node.nil?
    post_order_traversal(node.left, arr)
    post_order_traversal(node.right, arr)
    arr << node.val
  end

  private

  def tree_height(node)
    return -1 unless node
    left_height = tree_height(node.left)
    right_height = tree_height(node.right)
    [left_height, right_height].max + 1
  end

  def from_arr(arr)
    return nil if arr.empty?
    @root = Node.new(arr.shift)
    insert(arr.shift) until arr.empty?
  end

  def search_at_node(node, v)
    return false if node.nil?
    case node.val <=> v
    when 1
      search_at_node(node.left, v)
    when -1
      search_at_node(node.right, v)
    when 0
      true
    end
  end

  def bfs_search_at_node(node, v)
    queue = []
    queue.push(node)
    while queue.size.nonzero?
      n = queue.shift
      return n if n.val == v
      queue.push(n.left) if n.left
      queue.push(n.right) if n.right
    end
    false
  end

  def insert_at_node(node, new_node)
    case node.val <=> new_node.val
    when 1
      return insert_at_node(node.left, new_node) unless node.left.nil?
      node.left = new_node
    when -1
      return insert_at_node(node.right, new_node) unless node.right.nil?
      node.right = new_node
    when 0
      false
    end
  end
end
