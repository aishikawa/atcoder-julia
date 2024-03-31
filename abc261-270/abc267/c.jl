function solve()
    n, m = [parse(Int, x) for x in split(readline())]
    as = [parse(Int, x) for x in split(readline())]

    cs = cumsum(as)

    cur = sum([i*a for (i, a) in enumerate(as[1:m])])
    ans = cur
    for i=m+1:n
        cur -= cs[i-1]
        if i-m-1 ≥ 1
            cur += cs[i-m-1]
        end
        cur += m * as[i]
        ans = max(ans, cur)
    end
    ans
end

println(solve())
