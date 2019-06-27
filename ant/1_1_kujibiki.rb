def main
  n, m = gets.split.map(&:to_i)
  k = gets.split.map(&:to_i)

  f = false

  for a in 0...n
    for b in 0...n
      for c in 0...n
        for d in 0...n
          if k[a] + k[b] + k[c] + k[d] == m
            f = true
          end
        end
      end
    end
  end

  if f
    puts 'Yes'
  else
    puts 'No'
  end
end

main if $0 == __FILE__
