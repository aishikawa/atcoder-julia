function solve()
    n = parse(Int, readline())
    cs = [parse(Int, x) for x in split(readline())]

    sort!(cs)
    ret = 1
    for (i, c) in enumerate(cs)
        ret = ret * max(0, c - i + 1) % (10^9+7)
    end
    ret
end

println(solve())
