n,x,y = gets.split.map(&:to_i)
result = "N"
array = Array.new(5){ |i| i+1 }
array.each_with_index do |count,i|
if (i+1) % x == 0
    if (i+1) % y == 0
      result = "AB"
    else
      result ="A"
    end
  elsif (i+1) % y == 0
    result ="B"
  else
    result = "N"
  end
  puts result
end
