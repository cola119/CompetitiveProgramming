def test
	x = gets.to_i
	return "YES" if [3, 5, 7].include?(x)
	"NO"
end

puts test
