function solve()
    n = parse(Int, readline())
    as = [parse(Int, x) for x in split(readline())]

    dp = zeros(Int, 10)
    dp[as[1]+1] = 1

    m = 998244353
    for x in as[2:end]
        next = zeros(Int, 10)
        for i=1:10
            next[((i-1) + x) % 10 + 1] = (next[((i-1) + x) % 10 + 1] + dp[i]) % m
            next[((i-1) * x) % 10 + 1] = (next[((i-1) * x) % 10 + 1] + dp[i]) % m
        end
        dp = next
    end
    for x in dp
        println(x)
    end
end

solve()
