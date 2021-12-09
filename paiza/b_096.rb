h,w = gets.chomp.split.map(&:to_i)
s = 0
numbers = []
array = []
c = 0
h.times do |i|
  array[i] =  gets.chomp.chars
  if array[i].include?("#")
    numbers << array[i].index("#")
    array[i].fill("#")
  else
    numbers.each do |j|
      array[i][j] = "#"
    end
  end
end
puts array.join("").count("#")

