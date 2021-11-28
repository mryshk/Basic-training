r = "#"
loop {
  h,w = gets.split(" ").map(&:to_i)
  break if h == 0 && w == 0
  puts r*w
  (h-2).times{ puts "#" + "."*(w-2) + "#"}
  puts r*w
}


