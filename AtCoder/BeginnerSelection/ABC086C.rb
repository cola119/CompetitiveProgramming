def test
	n = gets.chomp.to_i
	t1, x1, y1 = 0, 0, 0
	n.times do
		t2, x2, y2 = gets.chomp.split(" ").map(&:to_i)
		return "No" if ((x2-x1).abs+(y2-y1).abs-t2-t1) % 2 != 0 || (x2-x1).abs+(y2-y1).abs > t2-t1
	end
	return "Yes"
end

puts test
