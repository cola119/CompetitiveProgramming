def test
	s = gets.to_i
	arr = [s]
	i = 2
	while true
		s = s % 2 == 0 ? s / 2 : 3 * s + 1
		break if arr.include?(s)
		i += 1
		arr << s
	end
	i
end

puts test
