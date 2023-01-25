function solve()
    n, q = [parse(Int, x) for x in split(readline())]
    as = [parse(Int, x) for x in split(readline())]
    sort!(as, rev=true)
    for _=1:q
        x = parse(Int, readline())
        println(searchsortedlast(as, x, rev=true))
    end
end

solve()
