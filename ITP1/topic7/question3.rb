r,c = gets.chomp.split.map(&:to_i)
arr = Array.new()
r_sum = Array.new(r)
c_sum = Array.new(c)
r.times do |i|
  arr[i] = gets.chomp.split.map(&:to_i)
end
r.times do |i|
  r_sum[i] = 0
end
c.times do |j|
  c_sum[j] = 0
end
# 下記のように数字の０を定義しないと計算ができない。
rc_sum = 0
r.times do |i|
  c.times do |j|
    r_sum[i] += arr[i][j]
    c_sum[j] += arr[i][j]
    rc_sum += arr[i][j]
  end
end
r.times do |i|
  c.times do |j|
    print arr[i][j]," "
  end
  print r_sum[i]
  puts
end
c.times do |j|
  print c_sum[j], " "
end
print rc_sum
puts