function solve()
    n = parse(Int, readline())
    as = [parse(Int, x) for x in split(readline())]
    M = 998244353
    ret = 0
    for i=1:n
        dp = zeros(Int, n, n, n)
        dp[1, 1, as[1] % i + 1] = 1
        for j=2:n
            for k=1:n
                for l=0:i-1
                    m  = mod(l - as[j], i)
                    if k ≥ 2
                        dp[j, k, l+1] = (dp[j-1, k-1, m+1] + dp[j-1, k, l+1]) % M
                    else
                        dp[j, k, l+1] = dp[j-1, k, l+1]
                        if l == (as[j] % i)
                            dp[j, k, l+1] = (dp[j, k, l+1] + 1) % M
                        end
                    end
                end
            end
        end
        ret = (ret + dp[n, i, 1]) % M
    end
    ret
end

println(solve())
