# def test
# 	n = gets.to_i
# 	ps = []
# 	n.times do
# 		ps << gets.to_i
# 	end
# 	ps.sort!
# 	ps[-1] /= 2
# 	ps.inject{|sum, i| sum + i}
# end

def test
	n = gets.to_i
	ps = []
	n.times do
		ps << gets.to_i
	end
	ps.inject(:+) - ps.max / 2
end

puts test
