require_relative 'linked_list'
def return_kth_to_last(list, k)
  idx = list.head
  k.times { idx = idx.succ }
  while idx.succ
    puts idx.val
    idx = idx.succ
  end
end
