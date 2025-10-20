function solve()
    N, S, K = [parse(Int, x) for x in split(readline())]
    P = Vector{Int}(undef, N)
    Q = Vector{Int}(undef, N)
    for i=1:N
        P[i], Q[i] = [parse(Int, x) for x in split(readline())]
    end

    ans = P'Q
    ans ≥ S ? ans : ans + K
end

println(solve())
