input = gets.split(' ')
a = []
input.each do |i|
  a << i.split("")
end
e = a.reverse
s = a.flatten!
r = e.flatten!
index_s = []
index_r = []
s.each do |i|
  index_s << ("a".."z").to_a.find_index(i) + 1
end
r.each do |i|
  index_r << ("a".."z").to_a.find_index(i) + 1
end
result = []


c = index_s.size
while c > 1
  index_s = index_s.each_cons(2).map do |e|
    if e[0]+e[1] > 100
      e[0]+e[1]-101
    else
      e[0]+e[1] 
    end
  end
  c-=1
end
result << index_s

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


puts result.max