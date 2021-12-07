n,x = gets.chomp.split.map(&:to_i)
a =[]
n.times do
    a_i,b_i,c_i,d_i=gets.split.map(&:to_i)
    if x<=a_i
        a << b_i
    else
      count = (x - a_i).to_f/c_i
      if count.to_f <= 1
        price = b_i + d_i
        a << price.to_i
      else
        price = count.to_i * d_i + b_i
        a << price.to_i
      end
    end
end
min = a.min
max = a.max
puts"#{min} #{max}"