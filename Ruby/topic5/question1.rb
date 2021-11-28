r="#"
loop{
	h,w=gets.split(" ").map(&:to_i)
	break if h==0 and w==0
	h.times{puts r*w}
	puts ""
}