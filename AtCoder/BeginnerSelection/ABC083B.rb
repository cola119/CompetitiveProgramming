def digit_sum(n, a = 0)
	return a if n == 0
	a += n%10
	digit_sum(n/10, a)
end


N, A, B = gets.chomp.split(" ").map(&:to_i)
cnt = 0
(1..N).each do |i|
	cnt += i if digit_sum(i) >= A && digit_sum(i) <= B
end

puts cnt
