function solve()
    N, X = [parse(Int, x) for x in split(readline())]
    S = [parse(Int, x) for x in split(readline())]
    sum([s for s ∈ S if s ≤ X])
end

println(solve())
