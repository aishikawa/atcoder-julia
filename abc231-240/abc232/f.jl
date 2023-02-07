function solve()
    n, x, y = [parse(Int, x) for x in split(readline())]
    as = [parse(Int, x) for x in split(readline())]
    bs = [parse(Int, x) for x in split(readline())]

    dp = zeros(Int, 2^n-1)

    for i=1:2^(n)-1
        indexes = Vector{Int}()
        for j=1:n
            if i & (1 << (j-1)) ≠ 0
                push!(indexes, j)
            end
        end
        nn = length(indexes)
        if nn == 1
            dp[i] = abs(as[indexes[1]] - bs[1]) * x
        else
            ps = Vector{Int}()
            for (ii, index) in enumerate(indexes)
                p = (nn - ii) * y + abs(as[index] - bs[nn]) * x + dp[i ⊻ (1 << (index-1))]
                push!(ps, p)
            end
            dp[i] = minimum(ps)
        end
    end
    dp[2^n-1]
end

println(solve())
