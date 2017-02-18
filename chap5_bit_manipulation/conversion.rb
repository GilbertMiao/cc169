def conversion(n1, n2)
  (n1 ^ n2).to_s(2).count '1'
end
