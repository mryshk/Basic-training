loop do
  s = gets.chomp
  break if s == ?-
  a = s.split("")
  m = gets.to_i
  h = 0
  m.times { h += gets.to_i }
  (h % s.size).times { a << a.shift }
  puts a.join
end