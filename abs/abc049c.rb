def main
  s = gets.chomp

  while 0 < s.length
    l = s.length
    s = s[0...-5] if s.end_with?("dream")
    s = s[0...-7] if s.end_with?("dreamer")
    s = s[0...-5] if s.end_with?("erase")
    s = s[0...-6] if s.end_with?("eraser")
    break if l == s.length
  end

  if s.length == 0
    puts "YES"
  else
    puts "NO"
  end
end

main if $0 == __FILE__
