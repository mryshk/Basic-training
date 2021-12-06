cards = {}
%w[S H C D].each do |s|
  cards[s] = Array.new 13
end
gets.to_i.times do
  s, i = gets.split
  i = i.to_i - 1
  cards[s][i] = true
end
%w[S H C D].each do |s|
  13.times do |i|
    puts "#{s} #{i+1}" unless cards[s][i]
  end
end
