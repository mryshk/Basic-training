require 'matrix'
n, m = gets.split.map &:to_i
a = Matrix[*(1..n).map{ gets.split.map &:to_i }]
v = Vector[*(1..m).map{ gets.to_i }]
puts (a * v).to_a