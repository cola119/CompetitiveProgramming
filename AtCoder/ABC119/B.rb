def test
	n = gets.to_i
	cnt = 0
	n.times do
		x, y = gets.split(" ")
		y == "JPY" ? cnt += x.to_i : cnt += x.to_f*380000
	end
	cnt
end

puts test
