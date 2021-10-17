function solve()
    n, m = [parse(Int, x) for x in split(readline())]
    a = [parse(Int, x) for x in split(readline())]
    b = [parse(Int, x) for x in split(readline())]

    dp = zeros(Int, n+1, m+1)
    for i=1:n+1
        dp[i, 1] = i-1
    end
    for j=1:m+1
        dp[1, j] = j-1
    end

    for i=2:n+1, j=2:m+1
        if a[i-1] == b[j-1]
            x = dp[i-1, j-1]
        else
            x = dp[i-1, j-1] + 1
        end
        dp[i, j] = min(dp[i-1, j]+1, dp[i, j-1]+1, x)
    end
    dp[n+1, m+1]
end

println(solve())
