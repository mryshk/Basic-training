# 2つの要素を配列として取得。
input = gets.split(' ')
a = []
# ２つの配列をそれぞれ１文字ずつへ分解してaの配列へpush
input.each do |i|
  a << i.split("")
end
# aはまだ二次元配列。その２つの要素のかたまりを順番逆にしてeの変数として置く。
e = a.reverse
# 正対と逆の２種類ともに１次元配列と置く。
s = a.flatten!
r = e.flatten!
index_s = []
index_r = []
# 正対と逆の２種類ともに数字へ変換する。
# 指定したiのインデックスを取得。インデックス＋１することで数字化に成功。
s.each do |i|
  index_s << ("a".."z").to_a.find_index(i) + 1
end
r.each do |i|
  index_r << ("a".."z").to_a.find_index(i) + 1
end
result = []

# 配列の要素の数をc変数へ。
c = index_s.size
while c > 1
  # each_consメソッドによって前から順に指定した数をまとめてくれる。
  # まとめた２つの数字を足していく。
  # もし足した数が１００を超えた場合は-101をする。
  index_s = index_s.each_cons(2).map do |e|
    if e[0]+e[1] > 100
      e[0]+e[1]-101
    else
      e[0]+e[1] 
    end
  end
  # 繰り返すたびにcの数を１減らしていく。
  c-=1
end
# 残った一つの要素をresult配列へ。
result << index_s

# 逆版の配列バージョン。
t = index_r.size
while t > 1  
  index_r = index_r.each_cons(2).map do |e|
    if e[0]+e[1] > 100
      e[0]+e[1]-101
    else
      e[0]+e[1] 
    end
  end 
  t-=1
end
result << index_r

# 二つの配列の大きい方を出力。
puts result.max