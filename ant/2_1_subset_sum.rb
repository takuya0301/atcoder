def main
  _ = gets.to_i
  a = gets.split.map(&:to_i)
  k = gets.to_i

  if dfs(a, k, 0)
    puts "Yes"
  else
    puts "No"
  end
end

def dfs(a, k, sum)
  return sum == k if a.empty?
  return true if dfs(a.drop(1), k, sum)
  return true if dfs(a.drop(1), k, sum + a.first)
  false
end

main if $0 == __FILE__
