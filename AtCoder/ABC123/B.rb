def test
	ans = 0
	m = 0
	5.times do |i|
		a = gets.to_i
		ans += a
		a = 10 - ((a % 10 == 0) ? 10 : a % 10)
		m = a if m < a
		ans += a
	end
	ans - m
end

puts test
