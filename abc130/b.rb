def main
  n, x = gets.split.map(&:to_i)
  ls = gets.split.map(&:to_i)

  d = 0
  count = 1
  ls.each do |l|
    d += l
    count += 1 if d <= x
  end

  puts count
end

main if $0 == __FILE__
