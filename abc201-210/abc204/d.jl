function solve()
    n = parse(Int, readline())
    ts = [parse(Int, x) for x in split(readline())]
    s = sum(ts)

    half = s ÷ 2

    dp = zeros(Bool, (n, half))
    if ts[1] ≤ half
        dp[1, ts[1]] = true
    end
    for i=2:n
        for x=1:half
            dp[i, x] = dp[i-1, x]
            if x - ts[i] ≥ 1
                dp[i, x] = dp[i, x] || dp[i, x-ts[i]]
            end
        end
        if ts[i] ≤ half
            dp[i, ts[i]] = true
        end
    end
    for x=half:-1:1
        if dp[n, x]
            return s - x
        end
    end
    s
end

println(solve())