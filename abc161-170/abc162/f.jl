function solve()
    n = parse(Int, readline())
    a = [parse(Int, x) for x in split(readline())]

    dp = zeros(Int, n)
    dp[2] = max(a[1], a[2])
    oddsum = a[1]
    for i in 3:n
        if i % 2 == 0
            dp[i] = max(oddsum, dp[i-2] + a[i])
        else
            dp[i] = max(dp[i-1], dp[i-2] + a[i])
            oddsum += a[i]
        end
    end
    dp[n]
end

println(solve())
