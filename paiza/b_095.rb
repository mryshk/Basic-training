

puts max_result
score = 100
score_array = Array.new(n)
n.times do |i|
    score_array[i] = 0
end
n.times do |i|
  m.times do |j|
    if (array_new[i][j] - a[j]).abs <= 5
      s = 0
    elsif (array_new[i][j] - a[j]).abs <= 10
      s = 1
    elsif (array_new[i][j] - a[j]).abs <= 20
      s = 2
    elsif (array_new[i][j] - a[j]).abs <= 30
      s = 3
    elsif  (array_new[i][j] - a[j]).abs > 30
      s = 5
    end
    score -= s
  end
  if score < 0
      score_array[i] = 0
  else
      score_array[i] += score
  end
end
puts score_array.max


n,m = gets.split().map{|n| n.to_i}
max_result = 0
# 正解の音を拾う
answer = []
(1..m).each do
    answer.push(gets.to_i)
end

# それぞれの音を広い点数を出す
(1..n).each do |man|
    # それぞれの音を拾う
    man_answer = []
    (1..m).each do 
        man_answer.push(gets.to_i)
    end
    # 正解と比較する
    result = 100
    (0..(m - 1)).each do |i|
        if (answer[i] - man_answer[i]).abs <= 5
            result -= 0
        elsif (answer[i] - man_answer[i]).abs <= 10
            result -= 1
        elsif (answer[i] - man_answer[i]).abs <= 20
            result -= 2
        elsif (answer[i] - man_answer[i]).abs <= 30
            result -= 3
        else
            result -= 5
        end
    end
    max_result = result if max_result < result
end

p max_result


n,m = gets.split.map(&:to_i)
a = Array.new(m)
m.times do |i|
  a[i] = gets.to_i
end
max_result = 0
(1..n).each do |i|
  i_answer = []
  (1..m).each do
    i_answer.push(gets.to_i)
  end
  result = 100
  (0..(m-1)).each do |i|
    if (a[i] - i_answer[i]).abs <= 5
      result -= 0
    elsif (a[i] - i_answer[i]).abs <= 10
      result -= 1
    elsif (a[i] - i_answer[i]).abs <= 20
      result -= 2
    elsif (a[i] - i_answer[i]).abs <= 30
      result -= 3
    else
      result -=5
    end
  end
  max_result = result if max_result < result
end
puts max_result