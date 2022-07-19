function solve()
    n = parse(Int, readline())
    ps = [parse(Int, x) for x in split(readline())]
    qs = zeros(Int, n)
    for (i,p) in enumerate(ps)
        qs[p] = i
    end
    join(qs, " ")
end

println(solve())
