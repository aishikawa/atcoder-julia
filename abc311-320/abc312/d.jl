function solve()
    m = 998244353
    S = collect(readline())
    n = length(S)
    dp = zeros(Int, n, n+1)
    if S[1] == '(' || S[1] == '?'
        dp[1, 2] = 1
    end

    for i=2:n
        if S[i] == '('
            dp[i, 2:n+1] = dp[i-1, 1:n]
        elseif S[i] == '?'
            dp[i, 1] = dp[i-1, 2]
            for j=2:n
                dp[i, j] = (dp[i-1, j-1] + dp[i-1, j+1]) % m
            end
            dp[i, n+1] = dp[i-1, n]
        elseif S[i] == ')'
            dp[i, 1:n] = dp[i-1, 2:n+1]
        end
    end

    dp[n, 1]

end

println(solve())
