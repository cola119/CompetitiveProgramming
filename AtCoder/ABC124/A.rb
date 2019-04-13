def test
    a, b = gets.split(" ").map(&:to_i)
    ans = 0
    [a+a-1, a+b, b+b-1].max
end

puts test