function solve()
    N, M = [parse(Int, x) for x in split(readline())]
    C = split(readline())
    D = split(readline())
    P = [parse(Int, x) for x in split(readline())]

    prices = Dict(D[i] => P[i+1] for i=1:M)

    sum(get(prices, c, P[1]) for c ∈ C)
end

println(solve())
