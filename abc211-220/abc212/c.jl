function solve()
    n, m = [parse(Int, x) for x in split(readline())]
    as = [parse(Int, x) for x in split(readline())]
    bs = [parse(Int, x) for x in split(readline())]

    sort!(bs)

    ret = 10^9
    for a in as
        r = searchsorted(bs, a)
        if r.start <= m
            ret = min(ret, abs(a-bs[r.start]))
        end
        if r.stop >= 1
            ret = min(ret, abs(a-bs[r.stop]))
        end
    end
    ret
end

println(solve())
