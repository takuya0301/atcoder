def fact(n)
  return 1 if n == 0
  n * fact(n - 1)
end

puts fact(10)
