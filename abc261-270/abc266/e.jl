function solve()
    n = parse(Int, readline())

    dp = zeros(Float64, n)
    dp[1] = (1+2+3+4+5+6) / 6
    for i=2:n
        for d=1:6
            if d > dp[i-1]
                dp[i] += d / 6
            else
                dp[i] += dp[i-1] / 6
            end
        end
    end

    dp[n]
end

println(solve())
