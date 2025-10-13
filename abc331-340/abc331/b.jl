function solve()
    N, S, M, L = [parse(Int, x) for x in split(readline())]

    cost = zeros(Int, N)
    for i=1:N
        s = i-6 > 0 ? cost[i-6] + S : S
        m = i-8 > 0 ? cost[i-8] + M : M
        l = i-12 > 0 ? cost[i-12] + L : L
        cost[i] = min(s, m, l)
    end
    cost[N]
end

println(solve())
