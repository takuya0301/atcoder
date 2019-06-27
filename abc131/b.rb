def main
  n, l = gets.split.map(&:to_i)

  sum = 0
  min = 10000
  (0...n).each do |i|
    if (l + i).abs < min.abs
      min = l + i
    end
    sum += l + i
  end

  puts sum - min
end

main if $0 == __FILE__
