gets 
arr = gets.split(" ").map(&:to_i)
puts "#{arr.min} #{arr.max} #{arr.inject(&:+)}"