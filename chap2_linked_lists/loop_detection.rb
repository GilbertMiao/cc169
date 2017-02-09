require_relative 'linked_list'

def loop?(list)
  list_hash = {}
  head = list.head
  while head
    if list_hash[head.val]
      return head
    else
      list_hash[head.val] = true
    end
    head = head.succ
  end
  false
end

list = LinkedList.new([1, 2, 3, 4, 5])
puts loop?(list)
