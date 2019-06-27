def main
  l, n = gets.split.map(&:to_i)
  xs = gets.split.map(&:to_i)

  min = xs.map {|x| [x, l - x].min}.max
  max = xs.map {|x| [x, l - x].max}.max

  puts "#{min} #{max}"
end

main if $0 == __FILE__
