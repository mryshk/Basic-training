# １つの整数 x を読み込み、それをそのまま出力するプログラムを作成して下さい。
i = 1
while (x = gets.to_i) != 0 
  puts "Case #{i}: #{x}"
  i += 1
end