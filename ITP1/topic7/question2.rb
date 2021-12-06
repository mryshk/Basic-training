while true
  n,x = gets.chomp.split.map(&:to_i)
  break if n==0 && x==0
  
  numbers = (1..n).to_a
  count = 0
  numbers.combination(3){ |a,b,c| count += 1 if a+b+c==x }
  puts count
end
