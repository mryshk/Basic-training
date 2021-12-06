loop {
  n,x = gets.split.map(&:to_i)
  break if x == 0
  puts (1..n).to_a.combination(3).count{ |a,b,c| a+b+c==x }
}
