def main
  n = gets.to_i
  txys = n.times.map{gets.split.map(&:to_i)}
  txys.unshift([0, 0, 0])
  answer = "Yes"

  (0...n).each do |i|
    t1, x1, y1 = txys[i]
    t2, x2, y2 = txys[i + 1]

    t = (t1 - t2).abs
    x = (x1 - x2).abs
    y = (y1 - y2).abs

    answer = "No" if (t - x - y) < 0 || (t - x - y).odd?
  end

  puts answer
end

main if $0 == __FILE__
