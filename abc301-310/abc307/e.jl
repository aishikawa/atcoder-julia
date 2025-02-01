function solve()
    N, M = [parse(Int, x) for x in split(readline())]
    dp = zeros(Int, N, 2)
    m = 998244353

    dp[2, 2] = M-1
    for i=3:N
        dp[i, 1] = dp[i-1, 2]
        dp[i, 2] = mod(mod(dp[i-1, 1] * (M-1), m) + mod(dp[i-1, 2] * (M-2), m), m)
    end

    mod(dp[N, 2] * M, m)
end

println(solve())
