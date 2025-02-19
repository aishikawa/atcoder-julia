function solve()
    N, P, Q = [parse(Int, x) for x in split(readline())]
    D = [parse(Int, x) for x in split(readline())]
    minD = minimum(D)

    min(P, Q+minD)
end

println(solve())
