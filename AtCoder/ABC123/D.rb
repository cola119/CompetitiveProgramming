# def calc(as, bs, cs)
# 	p as[0] + bs[0] + cs[0]
# 	calc()
# end

def abc
	x, y, z, k = gets.chomp.split(" ").map(&:to_i)
	as = gets.chomp.split(" ").map(&:to_i).sort{|a, b| b <=> a }
	bs = gets.chomp.split(" ").map(&:to_i).sort{|a, b| b <=> a }
	cs = gets.chomp.split(" ").map(&:to_i).sort{|a, b| b <=> a }
	k.times do |i|
		# puts calc(as, bs, cs)
		puts as[0] + bs[0] + cs[0]
		
	end
end

p abc
