input = gets.split.map(&:to_i)
n = gets.to_i
answer=[]
n.times do
  a = gets.chomp.split.map(&:to_i) 
  output = input & a
  answer << output
end
for i in 0..(n-1)
  puts answer[i].size
end
