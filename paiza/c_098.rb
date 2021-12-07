n = gets.to_i
ball = [*(1..n).map{ gets.split.map(&:to_i) }]
m = gets.to_i
m.times do
  x,y,c = gets.split.map(&:to_i)
  ball << ball[x-1] - c
  ball << ball[y-1] + c
end
puts ball