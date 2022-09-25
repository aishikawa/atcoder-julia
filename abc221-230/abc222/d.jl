function solve()
    n = parse(Int, readline())
    as = [parse(Int, x) for x in split(readline())]
    bs = [parse(Int, x) for x in split(readline())]
    dp = zeros(Int, n, 3001)
    m = 998244353

    dp[1, as[1]+1:bs[1]+1] .= 1
    for i=2:n
        s = 0
        for j=1:3001
            s = (s + dp[i-1, j]) % m
            if as[i] ≤ j-1 ≤ bs[i]
                dp[i, j] = s
            end
        end
    end
    ans = 0
    for j=1:3001
        ans = (ans + dp[n, j]) % m
    end
    ans
end

println(solve())
