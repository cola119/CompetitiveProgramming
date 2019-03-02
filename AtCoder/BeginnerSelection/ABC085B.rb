N = gets.to_i

arr = []
cnt = 0

N.times do
	n = gets.to_i
	unless arr.include?(n)
		cnt += 1
		# arr.push(n)
		arr << n
	end
end

puts cnt

def test
   puts gets.to_i.times.map{gets.to_i}.uniq.size
end
# test
