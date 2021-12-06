def main(input = STDIN)
  n = input.gets.to_i
  m = n
  output = ["#{n}:"]
  while m % 2 == 0
    output << 2
    m /= 2
  end
  f = 3
  while m != 1 and f ** 2 <= n
    while m % f == 0
      output << f
      m /= f
    end
    f += 2
  end
  output << m if m != 1
  puts output.join(" ")
end
main