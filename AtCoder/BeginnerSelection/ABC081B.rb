def check(arr, cnt = 0)
	return cnt unless arr.select{|x| x%2 == 1}.empty?
	cnt += 1
	check(arr.map{|x| x/2}, cnt)
end

gets
ns = gets.chomp.split(" ").map(&:to_i)

puts check(ns)
