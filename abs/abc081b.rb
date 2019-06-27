def main
  n = gets.chomp
  as = gets.chomp.split.map(&:to_i)
  count = 0
  while as.all?(&:even?) do
    as = as.map {|a| a / 2}
    count += 1
  end
  puts count
end

main if $0 == __FILE__
