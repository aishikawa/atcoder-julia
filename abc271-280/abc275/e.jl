function solve()
    n, m, k = [parse(Int, x) for x in split(readline())]
    M = 998244353
    invm = invmod(m, M)
    dp = zeros(Int, n+1)
    dp[1] = 1
    for _=1:k
        next = zeros(Int, n+1)
        next[n+1] = dp[n+1]
        for p=1:n, d=1:m
            nextp = p+d > n+1 ? 2n+2-p-d : p+d
            prob = mod(dp[p] * invm, M)
            next[nextp] = mod(next[nextp] + prob, M)
        end
        dp = next
    end
    dp[n+1]
end

println(solve())
