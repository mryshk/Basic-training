h,w = gets.chomp.split.map(&:to_i)
s = 0
numbers = []
h.times do |i|
  array = []
  w.times do |j|
    array[j] = gets.to_s
  end
  if array.include?("#")
    s += w
  end
  numbers << array.index("#").to_i
end
numbers.uniq!
s_2 = numbers.size.to_i * 3
puts s + a_2