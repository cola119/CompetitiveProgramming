A = gets.to_i
B = gets.to_i
C = gets.to_i
X = gets.to_i

cnt = 0

for i in 0..A
	for j in 0..B
		for k in 0..C
			cnt += 1 if i*500+j*100+k*50 == X
		end
	end
end

puts cnt
