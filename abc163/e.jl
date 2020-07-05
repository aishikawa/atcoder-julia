function solve()
    n = parse(Int, readline())
    a = [parse(Int, x) for x in split(readline())]

    z = [(a[i], i) for i=1:n]
    sort!(z, rev=true)

    dp = zeros(Int, (n+1, n+1))
    for s=1:n, i=0:s
        li = i
        ri = s-i
        l = if li > 0
            dp[li, ri+1] + z[s][1] * abs(li - z[s][2])
        else
            0
        end
        r = if ri > 0
            dp[li+1, ri] + z[s][1] * abs((n-ri+1) - z[s][2])
        else
            0
        end
        dp[li+1, ri+1] = max(l, r)
    end
    maximum([dp[i+1, n-i+1] for i=0:n])
end

println(solve())
