def test(str)
	key = %w(dream dreamer erase eraser)
	dp = Array.new(str.length+10, 0)
	dp[0] = 1
	(0..str.length).each do |i|
		next if dp[i] == 0
		key.each do |k|
			dp[i + k.length] = 1 if  str[i, k.length] == k
		end
	end
	dp[str.length] == 1 ? "YES" : "NO"
end


puts test(gets.chomp)
