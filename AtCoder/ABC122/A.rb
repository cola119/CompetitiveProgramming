def test
	b = gets.chomp
	return "T" if b == "A"
	return "G" if b == "C"
	return "C" if b == "G"
	return "A" if b == "T"
end

puts test
