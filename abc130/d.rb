def main
  n, k = gets.split.map(&:to_i)
  as = gets.split.map(&:to_i)

  count = 0
  (0...n).each do |i|
    index = (i...n).bsearch do |j|
      total = 0
      (i..j).each do |x|
        total += as[x]
      end
      k <= total
    end
    count += n - index if index
  end

  puts count
end

main if $0 == __FILE__
