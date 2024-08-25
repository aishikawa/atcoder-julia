function solve()
    N, M = [parse(Int, x) for x in split(readline())]
    A = [parse(Int, x) for x in split(readline())]
    B = [parse(Int, x) for x in split(readline())]

    sum([A[b] for b in B])
end

println(solve())
