function solve()
    n, m, k = [parse(Int, x) for x in split(readline())]
    as = [parse(Int, x) for x in split(readline())]
    bs = [parse(Int, x) for x in split(readline())]

    as = cat(0, cumsum(as), dims=1)
    bs = cat(0, cumsum(bs), dims=1)

    ret = 0
    bi = m+1

    for ai=1:n+1
        while bi > 0 && as[ai] + bs[bi] > k
            bi -= 1
        end
        ret = max(ret, ai + bi - 2)
        if bi == 0
            break
        end
    end
    ret
end

println(solve())
