n = gets.to_i
a = []
n.times do |i|
  a.push(gets.to_i)
end
result = []
result.push((a[0]-1).abs)

a = a.each_cons(2).to_a
a.each do |i|
  result << (i[0]-i[1]).abs 
end


puts result.sum