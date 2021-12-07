input = gets.chomp.delete("+").chars.to_a
input.map!{ |item| item == "/" ? 1 : item && item=="<" ? 10 : item }
puts input.sum