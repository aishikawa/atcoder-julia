function solve()
    a = 998244353
    n, m, k = [parse(Int, x) for x in split(readline())]
    
    dp = zeros(Int, (n, k))
    dp[1, :] = zeros(Int, k)
    dp[1, 1:m] .= 1

    for i=2:n
        for j=1:k
            l = max(1, j-m)
            r = j-1
            dp[i, j] = sum(dp[i-1, l:r]) % a
        end
    end
    sum(dp[n, :]) % a
end

println(solve())
