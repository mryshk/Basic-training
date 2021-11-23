while((numbers = gets.split.map(&:to_i)) != [0,0])
  puts numbers.sort.join(" ")
end