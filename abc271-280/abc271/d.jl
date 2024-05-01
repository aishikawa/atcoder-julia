function solve()
    n, s = [parse(Int, x) for x in split(readline())]
    as = zeros(Int, n)
    bs = zeros(Int, n)
    for i=1:n
        as[i], bs[i] = [parse(Int, x) for x in split(readline())]
    end

    dp = fill("", (n, s))
    if as[1] ≤ s
        dp[1, as[1]] = "H"
    end
    if bs[1] ≤ s
        dp[1, bs[1]] = "T"
    end

    for i=2:n
        for j=1:s
            if j - as[i] > 0 && dp[i-1, j-as[i]] ≠ ""
                dp[i, j] = dp[i-1, j-as[i]] * "H"
            end
            if j - bs[i] > 0 && dp[i-1, j-bs[i]] ≠ ""
                dp[i, j] = dp[i-1, j-bs[i]] * "T"
            end
        end
    end

    if dp[n, s] ≠ ""
        println("Yes")
        println(dp[n, s])
    else
        println("No")
    end
end

solve()
