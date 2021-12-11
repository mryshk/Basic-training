h,w,k = gets.chomp.split.map(&:to_i)
a = []
h.times do |i|
  a[i] = gets.chomp.chars
end
save = []
array = []
for j in 0..(h-1) do
  a[j].each_with_index do |item, i|
    if item=="N"
      save.push(j,i)
    elsif item != "#"
      array << [j,i]
    end
  end
end
result=[]
subject =[]
array.each_with_index do |item,i|
  for j in 0..1
    result << (save[j] - array[i][j]).abs
  end
end
re = []
# result.each_with_index do |item , i|
#   re << result[i].sum
# end
result = result.each_slice(2).to_a
re = result.map(&:sum)
subject = []
re.each_with_index do |item,i|
  if item == re.min
    subject << array[i]
  end
end
c = subject.size
resolve = []
for i in 0...c
  resolve << a[subject[i][0]][subject[i][1]]
end
puts re.count(re.min)
puts resolve.sort
