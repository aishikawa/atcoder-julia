function solve()
    N, K, D = [parse(Int, x) for x in split(readline())]
    as = [parse(Int, x) for x in split(readline())]

    dp = zeros(Int, (N+1, K+1, D))
    dp .= -1

    dp[1, 1, 1] = 0
    for i=1:N, j=1:K+1, k=1:D
        if dp[i, j, k] == -1
            continue
        end
        dp[i+1, j, k] = max(dp[i+1, j, k], dp[i, j, k])
        if j ≠ K+1
            dp[i+1, j+1, (k-1+as[i])%D+1] = max(dp[i+1, j+1, (k-1+as[i])%D+1], dp[i, j , k] + as[i])
        end
    end

    dp[N+1, K+1, 1]
end

println(solve())
