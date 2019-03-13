def test
	n, m = gets.split(" ").map(&:to_i)
	arr = Array.new(m, 0)
	n.times do
		as = gets.split(" ").map(&:to_i)
		as.shift
		as.each do |a|
			arr[a-1] += 1
		end
	end
	arr.select{|i| i == n}.length
end

puts test
