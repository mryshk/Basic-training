# AOJの割り算
a,b = gets.split.map(&:to_i)
printf("%d %d %.3f", a/b,a%b,a.to_f/b)