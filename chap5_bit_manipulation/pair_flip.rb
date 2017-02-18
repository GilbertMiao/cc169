def pair_flip(num)
  bit_chars = num.to_s(2).chars
  test = bit_chars.each_slice(2).to_a.map do |arr|
    arr[0], arr[-1] = arr[-1], arr[0]
  end
  test.flatten(1).join
end
