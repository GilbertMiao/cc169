# given two strings, write a method to decide if one is a permutation
# of the other
#
def permutation?(str, str2)
  str_count = count_chars(str)
  str_count2 = count_chars(str2)
  str_count.eql?(str_count2)
end

def count_chars(str)
  str.chars.inject(Hash.new(0)) do |h,x|
    h[x] += 1
    h
  end
end
