def test
	a, b, c = gets.split(" ").map(&:to_i)
	a * b / 2
end

puts test
