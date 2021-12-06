x,y,r,w,h = gets.split.map(&:to_i)
puts (x>=r && y>=r && x<=w-r && y<=h-r ) ? "Yes" : "No"