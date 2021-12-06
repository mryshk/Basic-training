a,b = gets.split.map(&:to_i)
op = "=" if a == b
op = ">" if a > b
op = "<" if a < b
puts "a #{op} b"