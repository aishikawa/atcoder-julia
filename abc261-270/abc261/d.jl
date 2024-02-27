function solve()
    n, m = [parse(Int, x) for x in split(readline())]
    xs = [parse(Int, x) for x in split(readline())]
    cs = zeros(Int, n)
    for _=1:m
        c, y = [parse(Int, x) for x in split(readline())]
        cs[c] = y
    end

    dp = zeros(Int, n, n+1)
    dp[1, 2] = xs[1] + cs[1]
    for i=2:n
        for c=0:i
            if c == 0
                dp[i, c+1] = maximum(dp[i-1, :])
            else
                dp[i, c+1] = dp[i-1, c] + xs[i] + cs[c]
            end
        end
    end
    maximum(dp[n, :])
end

println(solve())
