n,m = gets.split.map(&:to_i)
a = [*(1..m).map{ gets.split.map &:to_i }]
array_new = []
n.times do |i|
  array_new << [*(1..m).map{ gets.split.map &:to_i }]
end

score = 100
score_array = Array.new(n*m)
for i in 0..(m-1)
  for w in 0..(n-1)
    t = array_new[w][i]
    y = a[i]
    if t.to_i - y.to_i <= 5
      s = 1
    elsif t.to_i -  y.to_i <= 10
      s = 2
    elsif t.to_i -  y.to_i <= 20
      s = 3
    else
      s =5
    end
    score -= s
  end
 score_array << score
end
puts score_array.max