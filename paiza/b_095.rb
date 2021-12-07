n,m = gets.split.map(&:to_i)
a = [*(1..m).map{ gets.split.map &:to_i }]
array_new = []
n.times do |i|
  array_new << [*(1..m).map{ gets.split.map &:to_i }]
end

score = 100
score_array = []
for i in 0..(m-1)
  for w in 0..(n-1)
    if array_new[w][i] - a[i] <= 5
      s = 1
    elsif array_new[w][i] - a[i] <= 10
      s = 2
    elsif array_new[w][i] - a[i] <= 20
      s = 3
    else
      s =5
    end
    score -= s
  end
 score_array << score
end
puts score_array.max