def count(s, n, k, pad)
    cnt = 0
    changeCnt = 0
    tmp = "1"
    n.times do |i|
        cnt += 1
        if s[i] != tmp
            if changeCnt == k && s[i] == '0'
                cnt -= 1
                break
            else
                if tmp == '1'
                    if pad != 0
                        pad -= 1
                        cnt = 0
                        changeCnt = 0
                        next
                    end
                    changeCnt += 1
                end
            end
            tmp = s[i]
        end
    end
    cnt
end

def test
    n, k = gets.split(" ").map(&:to_i)
    s = gets.chomp
    l = s.split("1").compact.reject(&:empty?).length
    ans = 0
    tmp = 0
    (l+1).times do |i|
        tmp = count(s.dup, n, k, i)
        ans = tmp if tmp > ans
    end
    ans
end

puts test