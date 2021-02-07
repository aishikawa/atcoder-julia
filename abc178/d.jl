function solve()
    m = 1000000007
    s = parse(Int, readline())
    dp = zeros(Int, s)
    for i=3:s
        dp[i] = 1
        for j=3:i-3
            dp[i] = (dp[i] + dp[j]) % m
        end
    end
    dp[s]
end

println(solve())
