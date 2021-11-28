r = "#"
loop {
  h,w = gets.split.map(&:to_i)
  break if h == 0 && w == 0
  h.times{puts r*w}
  puts ""
}