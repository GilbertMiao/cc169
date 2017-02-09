require_relative 'linked_list'
require 'pry'
def partition(list, k)
  lo = []
  hi = []
  idx = list.head
  while idx&.val
    idx.val < k ? lo << idx.val : hi << idx.val
    idx = idx.succ
  end

  lo_list = LinkedList.new(lo)
  hi_list = LinkedList.new(hi)

  lo_list.concat(hi_list)
end

list = LinkedList.new([3,1,2,5])
res = partition(list, 3)
puts res
