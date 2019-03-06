def test
	y, m, d = gets.split("/").map(&:to_i)
	return "Heisei" if m <= 4 && d <= 30
	"TBD"
end

puts test
