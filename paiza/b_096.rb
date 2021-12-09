h,w = gets.chomp.split.map(&:to_i)
s = 0
numbers = []
array = []
c = 0
h.times do |i|
  array[i] =  gets.chomp.chars
  if array[i].include?("#")
    array[i].each_with_index do |item, i|
      if item == "#"
        numbers << i
      end
    end
    array[i].fill("#")
  
  else
    numbers.each do |j|
      array[i][j] = "#"
    end
  end
end
puts array.join("").count("#")

