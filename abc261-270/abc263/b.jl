function solve()
    n = parse(Int, readline())
    ps = [parse(Int, x) for x in split(readline())]

    ret = 0
    c = n
    while c ≠ 1
        c = ps[c-1]
        ret += 1
    end

    ret
end

println(solve())
