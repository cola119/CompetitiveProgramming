def test
	n = gets.to_i
	ls = gets.split(" ").map(&:to_i).sort
	sum = ls.inject(0){|a, b| a + b}
	2*ls.last < sum ? 'Yes' : 'No'
end

puts test
