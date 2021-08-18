function solve()
    n = parse(Int, readline())
    while n % 2 == 0
        n ÷= 2
    end
    sq = floor(Int, sqrt(n))
    ret = 0
    for i=1:sq
        if n % i == 0
            ret += 2
        end
    end
    if sq * sq == n
        ret -= 1
    end
    2ret
end

println(solve())
