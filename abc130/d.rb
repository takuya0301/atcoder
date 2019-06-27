def main
  n, k = gets.split.map(&:to_i)
  as = gets.split.map(&:to_i)

  answer = 0

  r = 0
  sum = 0
  n.times do |i|
    while sum < k && r < n do
      sum += as[r]

      r += 1
    end

    answer += n - r + 1 if k <= sum

    sum -= as[i]
  end

  puts answer
end

main if $0 == __FILE__
