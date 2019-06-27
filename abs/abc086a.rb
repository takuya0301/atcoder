def main
  a, b = gets.chomp.split.map(&:to_i)
  c = a * b
  puts "Odd" if c.odd?
  puts "Even" if c.even?
end

main if $0 == __FILE__
