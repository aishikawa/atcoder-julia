function solve()
    N, M, P = [parse(Int, x) for x in split(readline())]
    N ≥ M ? (N-M) ÷ P + 1 : 0
end

println(solve())
