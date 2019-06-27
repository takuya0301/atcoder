def main
  n = gets.to_i
  a = gets.split.map(&:to_i)

  ans = 0

  for i in 0...n
    for j in (i+1)...n
      for k in (j+1)...n
        len = a[i] + a[j] + a[k]
        ma = [a[i], a[j], a[k]].max
        rest = len - ma

        if ma < rest
          ans = [ans, len].max
        end
      end
    end
  end

  puts ans
end

main if $0 == __FILE__
