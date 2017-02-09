Node = Struct.new(:val, :succ)

class LinkedList
  attr_accessor :head, :length
  def initialize(arr = [])
    @head = from_arr(arr)
    @length = arr.length
  end

  def concat(list)
    idx = self.head
    idx = idx.succ while idx.succ
    idx.succ = list.head
    self
  end

  private

  def from_arr(arr)
    head = Node.new(arr[0], nil)
    prev = head
    arr[1..-1].each do |v|
      node = Node.new(v, nil)
      prev.succ = node
      prev = node
    end
    head
  end

end
