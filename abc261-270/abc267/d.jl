function solve()
    n, m = [parse(Int, x) for x in split(readline())]
    as = [parse(Int, x) for x in split(readline())]

    dp = zeros(Int, (n, m))
    dp[1, 1] = as[1]
    for i=2:n
        dp[i, 1] = max(dp[i-1, 1], as[i])
    end
    for i=2:n
        for j=2:min(i, m)
            dp[i, j] = 
            if i-1 < j
                dp[i-1, j-1] + j*as[i]
            else
                max(dp[i-1,j], dp[i-1, j-1] + j*as[i])
            end
        end
    end
    dp[n, m]
end

println(solve())
