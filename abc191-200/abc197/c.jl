function solve()
    n = parse(Int, readline())
    as = [parse(Int, x) for x in split(readline())]

    ret = 2^30+1
    for i in 0:2^(n-1)
        y = 0
        x = 0
        for j = 0:n
            if j < n
                x = x | as[j+1]
            end
            if j == n || i >> j & 1 ≠ 0
                y = y ⊻ x
                x = 0
            end
        end
        ret = min(ret, y)
    end
    ret
end

println(solve())