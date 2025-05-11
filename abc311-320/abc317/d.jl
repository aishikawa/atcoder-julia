function solve()
    N = parse(Int, readline())
    X = zeros(Int, N)
    Y = zeros(Int, N)
    Z = zeros(Int, N)

    for i in 1:N
        X[i], Y[i], Z[i] = [parse(Int, x) for x in  split(readline())]
    end

    M = sum(Z) ÷ 2 + 1
    dp = fill(10^12, N, M)
    for i=1:N
        c = max(0, (X[i] + Y[i]) ÷ 2 + 1 - X[i])
        for j=1:M
            if i ≥ 2
                dp[i, j] = dp[i-1, j]
            end

            if j ≤ Z[i]
                dp[i, j] = min(dp[i, j], c)                
            elseif i ≥ 2
                dp[i, j] = min(dp[i, j], dp[i-1, j-Z[i]]+c)
            end
        end
    end

    dp[N, M]
end

println(solve())
