def abc
	n = gets.to_i
	a = []
	5.times do |i|
		a[i] = gets.to_i
	end
	ans = 0
	m, index = a.each_with_index.min
	index.times do |i|
		n = (i == 0) ? n : a[i-1]
		ans += (n / a[i] >= 1 && n % a[i] != 0) ? n / a[i] + 1 : 1
	end
	ans = (ans == 0) ? 0 : ans - 1
	ans + n / m + (5 - index)
end

p abc
