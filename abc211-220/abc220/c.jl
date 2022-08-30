function solve()
    n = parse(Int, readline())
    as = [parse(Int, x) for x in split(readline())]
    x = parse(Int, readline())

    s = sum(as)
    xx = x ÷ s
    yy = x % s

    i = 0
    ss = 0
    while ss ≤ yy
        i += 1
        ss += as[i]
    end

    xx * n + i
end

println(solve())
