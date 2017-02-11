def stack_min(arr)
  min = arr.pop
  until arr.empty?
    temp = arr.pop
    min = temp if min < temp
  end
  min
end
