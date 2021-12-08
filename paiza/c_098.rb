n = gets.to_i
ball = Array.new(n)
n.times do |i|
  ball[i] = gets.to_i
end
m = gets.to_i
m.times do
  x,y,c = gets.chomp.split.map(&:to_i)
  if ball[x-1] < c
    ball[y-1] += ball[x-1]
    ball[x-1] = 0
  else
    ball[x-1] -= c
    ball[y-1] += c
  end
end
n.times do |i|
  puts ball[i]
end