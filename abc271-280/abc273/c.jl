function solve()
    n = parse(Int, readline())
    as = [parse(Int, x) for x in split(readline())]
    sorted = sort(collect(Set(as)))
    rets = zeros(Int, n)
    len = length(sorted)
    for a in as
        c = searchsortedlast(sorted, a)
        rets[len-c+1] += 1
    end

    for r in rets
        println(r)
    end
end

solve()
