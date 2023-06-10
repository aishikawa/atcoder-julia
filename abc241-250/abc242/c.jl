function solve()
    m = 998244353
    n = parse(Int, readline())
    dp = ones(Int, 9)
    for _=2:n
        temp = zeros(Int, 9)
        for i=1:9
            temp[i] = dp[i]
            if i > 1
                temp[i] = (temp[i] + dp[i-1]) % m
            end
            if i < 9
                temp[i] = (temp[i] + dp[i+1]) % m
            end
        end
        dp = temp
    end
    sum(dp) % m
end

println(solve())
