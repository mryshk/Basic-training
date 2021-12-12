n = gets.to_i
a = []
n.times do |i|
  a.push(gets.split.map(&:to_i))
end
a = a.each_cons(2).to_a
result = []

puts  a[0][0]-a[0][1]
