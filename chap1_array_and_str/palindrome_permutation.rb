# given a string, write a function to check if it is a permutation of a palindrome.
def palindrome_permutation(str)
  str_arr = str.downcase.gsub(/\s+/, '').chars.compact
  str_hash = str_arr.inject(Hash.new(0)) do |h, x|
    h[x] += 1
    h
  end

  str_hash.delete_if { |_, v| v % 2 == 0 }
  str_hash.length > 1 ? false : true
end
