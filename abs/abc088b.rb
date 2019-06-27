def main
  n = gets.to_i
  as = gets.split.map(&:to_i)

  as.sort!.reverse!

  alice = 0
  bob = 0

  n.times do |i|
    alice += as[i] if i.even?
    bob += as[i] if i.odd?
  end

  puts alice - bob
end

main if $0 == __FILE__
