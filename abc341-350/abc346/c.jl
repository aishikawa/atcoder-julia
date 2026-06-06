function solve()
    N, K = [parse(Int, x) for x in split(readline())]
    A = [parse(Int, x) for x in split(readline())]
    K * (K+1) ÷ 2 - sum(Set([x for x in A if x ≤ K]))
end

println(solve())
