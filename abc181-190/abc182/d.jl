function solve()
    n = parse(Int, readline())
    as = [parse(Int, x) for x in split(readline())]

    ret = 0
    pos = 0
    m = 0
    cs = 0

    for a in as
        cs += a
        m = max(m, cs)
        ret = max(ret, pos+m)
        pos = pos + cs
    end
    ret
end

println(solve())
