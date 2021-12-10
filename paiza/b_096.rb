h,w = gets.chomp.split.map(&:to_i)
s = 0
numbers = []
array = []
h.times do |i|
  # h行分の入力を配列にして取得
  array[i] =  gets.chomp.chars
  # １行ずつ#を含んでいるか確認する
  if array[i].include?("#")
    # 含んでいればそのindexをnumbers配列へ入れ込む。
    array[i].each_with_index do |item, i|
      if item == "#"
        numbers << i
      end
    end
  end
end
# 爆弾の影響を受ける部分を全て#に変えていく。
h.times do |i|
  if array[i].include?("#")
    # 行全てを変更
    array[i].fill("#")
  else
    numbers.each do |j|
      # 列全てを順に変えていく。
      array[i][j] ="#"
    end
  end
end
# 最後に#の数を数えて終わる。
puts array.join("").count("#")


