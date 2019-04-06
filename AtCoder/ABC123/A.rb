def test
	a = gets.to_i
	b = gets.to_i
	c = gets.to_i
	d = gets.to_i
	e = gets.to_i
	k = gets.to_i
	return ':(' if b-a > k || c-a > k || d-a > k || e-a > k
	return ':(' if c-b > k || d-b > k || e-b > k
	return ':(' if d-c > k || e-c > k
	return ':(' if e-d > k
	return 'Yay!'
end

puts test
