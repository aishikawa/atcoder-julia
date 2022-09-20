function solve()
    n, p = [parse(Int, x) for x in split(readline())]
    as = [parse(Int, x) for x in split(readline())]
    sum([1 for a in as if a < p])
end

println(solve())
