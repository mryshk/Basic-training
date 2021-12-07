m,p,q = gets.chomp.split.map(&:to_f)
sell = m * (p/100)
out_of_sell = m - sell.to_f
sell_2 = out_of_sell * (q/100)
out_of_sell_2 = out_of_sell - sell_2
puts out_of_sell_2.round