class Node
  attr_accessor :val, :left, :right, :parent
  def initialize(val, parent = nil)
    @val = val
    @left = nil
    @right = nil
    @parent = parent
  end
end
