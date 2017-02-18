require 'pry'

def flip_to_win(num)
  bit_str = num.to_s(2)
  ones = bit_str.split '0'
  res = ones.each_cons(2).map { |a, b| a.length + b.length }
  res.max + 1
end
