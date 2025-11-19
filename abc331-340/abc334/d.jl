function solve()
    N, Q = [parse(Int, x) for x in split(readline())]
    R = [parse(Int, x) for x in split(readline())]

    sort!(R)
    R = cumsum(R)

    for _=1:Q
        q = parse(Int, readline())
        println(searchsortedlast(R, q))
    end
end

solve()
