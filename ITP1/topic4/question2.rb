r = gets.chomp.to_f
area = r * r * Math::PI
l = r * 2 * Math::PI
puts "#{sprintf("%.3f",area)} #{sprintf("%.3f",l)}"