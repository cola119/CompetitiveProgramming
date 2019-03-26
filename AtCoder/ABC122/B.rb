def test
	ss = gets.chomp
	keys = %w(A C G T)
	cnt = 0
	ans = 0
	ss.each_char do |s|
		if keys.include?(s)
			cnt += 1
		else
			ans = cnt if cnt > ans
			cnt = 0
		end
	end
	[ans, cnt].max
end

puts test
