def main
  n, a, b = gets.split.map(&:to_i)
  sum = 0

  for i in 0..n
    v = i.to_s.split('').map(&:to_i).reduce(:+)
    sum += i if a <= v && v <= b
  end

  puts sum
end

main if $0 == __FILE__
