loop {
  a,op,b = gets.split
  a = a.to_i
  b = b.to_i
  break if op == "?"
  case op
  when "+"
    puts a+b
  when "-"
    puts a-b
  when "*"
    puts a*b
  when "/"
    puts a/b
  end
}


