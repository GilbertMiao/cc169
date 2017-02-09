require_relative 'linked_list'

def palindrome?(list)
  list_hash = {}
  head = list.head
  while head
    if list_hash[head.val]
      list_hash[head.val] += 1
    else
      list_hash[head.val] = 1
    end
    head = head.succ
  end
  list_hash.delete_if { |_, v| v.even? }
  list_hash.length > 1 ? false : true
end

list = LinkedList.new([1, 1, 2, 1, 1])
puts palindrome?(list)
