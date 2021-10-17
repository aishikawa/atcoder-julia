function solve()
    n, k = [parse(Int, x) for x in split(readline())]
    ps = [parse(Int, x) for x in split(readline())]
    sort!(ps)
    sum(ps[1:k])
end

println(solve())
