gets
ns = gets.chomp.split(" ").map(&:to_i).sort{|a, b| b <=> a}

ans = 0
ns.each_slice(2) do |a, b|
	b = 0 if b.nil?
	ans += (a - b)
end
puts ans
