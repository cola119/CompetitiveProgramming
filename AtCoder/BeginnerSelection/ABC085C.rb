# def test
# 	n, y = gets.chomp.split(" ").map(&:to_i)
#
# 	x = y - 1000 * n
# 	if x < 0
# 		puts "-1 -1 -1"
# 		return
# 	end
#
# 	0.upto(n) do |a|
# 		0.upto(n-a) do |b|
# 			if 9000*a + 4000*b == x
# 				puts "#{a} #{b} #{n - a - b}"
# 				return
# 			end
# 		end
# 	end
#
# 	puts "-1 -1 -1"
# end

def test
	n, y = gets.chomp.split(" ").map(&:to_i)

	r = y/1000 - n

	0.upto(n) do |a|
		b = (r-9*a) / 4
		if (r-9*a) % 4 == 0 && a+b <= n && b >= 0
			puts "#{a} #{b} #{n - a - b}"
			return
		end
	end

	puts "-1 -1 -1"
end

test
