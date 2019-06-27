def fib(n)
  return n if n <= 1
  @memo ||= []
  @memo[n] ||= fib(n - 1) + fib(n - 2)
end

(0..40).each do |n|
  puts "#{n} = #{fib(n)}"
end
