require 'pry'
# Insertion

def insertion(m, n, i, j)
  # bit position starts from right with i = 0
  # preserve 1's left of bit j
  binding.pry
  left = ~0 << j + 1
  # preserve 1's right of bit i
  right = (1 << i) - 1
  # create mask to clear all bits from index i through j in n
  mask = left | right

  # clear bits i through j in n
  n_cleared = n & mask
  # shift m to correct position
  m_shifted = m << i

  return n_cleared | m_shifted
end


insertion(1000000, 010, 2, 5)
