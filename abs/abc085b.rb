def main
  n = gets.to_i
  ds = n.times.map {gets.to_i}

  puts ds.uniq.size
end

main if $0 == __FILE__
