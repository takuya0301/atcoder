def main
  n, y = gets.split.map(&:to_i)

  for i in 0..n
    for j in 0..(n - i)
      if y == (n - i - j) * 10000 + i * 5000 + j * 1000
        puts "#{n - i - j} #{i} #{j}"
        return
      end
    end
  end

  puts "-1 -1 -1"
end

main if $0 == __FILE__
