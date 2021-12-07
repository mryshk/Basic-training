input = gets.delete("-" "\n").chars.map(&:to_i)
output = input.collect{ |item| if item == 0 then item+12 else item+2 end }
puts output.sum * 2