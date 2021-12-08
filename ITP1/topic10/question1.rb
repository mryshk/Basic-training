x1,y1,x2,y2 = gets.chomp.split.map(&:to_i)
distance = Math.sqrt( (x2-x1)**2 + (y2-y1)**2 )
printf("%.5f\n", distance)