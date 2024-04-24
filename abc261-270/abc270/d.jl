function solve()
    n, k = [parse(Int, x) for x in split(readline())]
    as = [parse(Int, x) for x in split(readline())]

    dp = zeros(Int, (n, 2))

    for i=1:n
        c = [0, 0]
        for a in as
            if a == i
                c = max(c, [a, 0])
            elseif a < i
                c = max(c, [a, 0] + reverse(dp[i-a, :]))
            end
        end
        dp[i, :] = c
    end
    dp[n, 1]
end

println(solve())
