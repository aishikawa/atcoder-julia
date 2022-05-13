function solve()
    n = parse(Int, readline())
    as = [parse(Int, x) for x in split(readline())]
    sortperm(as)[end-1]
end

println(solve())
