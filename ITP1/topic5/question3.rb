r = "#"
s = "."
loop {
  h,w = gets.split.map(&:to_i)
  break if h == 0 && w == 0
  h.times{|i|
    w.times{|j|
      if (i+j)%2 == 0
        print("#{r}")
      else
        print("#{s}")
      end
    }
    puts ""
  }
  puts ""
}
