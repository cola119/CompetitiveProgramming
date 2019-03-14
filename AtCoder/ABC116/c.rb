def split_by_0(arr, ans = [])
	return ans if arr.empty?
	index = arr.index(0)
	return ans << arr if index.nil?
	ans << arr[0..index-1] if index != 0
	split_by_0(arr[index+1..-1], ans)
end

def calc(hs, i = 0)
	return i if hs.empty?
	split_by_0(hs).each do |h|
		while !h.include?(0)
			h = h.map{ |h| h - 1 }
			i += 1
		end
		i = calc(h, i)
	end
	i
end

def test
	n = gets.to_i
	hs = gets.split(" ").map(&:to_i)
	calc(hs)
end

p test
