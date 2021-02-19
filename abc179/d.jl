using DataStructures

function solve()
    m = 998244353
    n, k = [parse(Int, x) for x in split(readline())]
    segments = zeros(Int, k, 2)
    for s=1:k
        segments[s, 1], segments[s, 2] = [parse(Int, x) for x in split(readline())]
    end
    ft = FenwickTree{Int}(n)
    inc!(ft, 1, 1)
    for i=2:n
        ways = 0
        for s=1:k
            lindex = i - segments[s, 2] - 1
            rindex = i - segments[s, 1]
            l = lindex > 0 ? prefixsum(ft, lindex) % m : 0
            r = rindex > 0 ? prefixsum(ft, rindex) % m : 0
            ways += ((r - l) + m) % m
            ways %= m
        end
        inc!(ft, i, ways)
    end
    (prefixsum(ft, n) - prefixsum(ft, n-1) + m) % m
end

println(solve())
