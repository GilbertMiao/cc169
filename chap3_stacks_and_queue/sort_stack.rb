require 'pry'
def sort_stack(stack)
  s2 = []
  until stack.empty?
    tmp = stack.pop
    while !s2.empty? && s2.last < tmp
      stack.push(s2.pop)
    end
    s2.push tmp
  end
  stack << s2.pop until s2.empty?
  stack
end

puts sort_stack([2,3,1,5])
