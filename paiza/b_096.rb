h,w = gets.chomp.split.map(&:to_i)
s = 0
numbers = []
array = []
h.times do |i|
  array << gets.chomp.split.map(&:to_s)
end
puts array