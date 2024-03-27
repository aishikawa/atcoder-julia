function solve()
    N = parse(Int, readline())

    current = 0
    dp = zeros(Int, 5)
    dp[1] = 0
    for _=1:N
        t, x, a = [parse(Int, x) for x in split(readline())]
        x += 1
        next = zeros(Int, 5)
        d = abs(t-current)
        for p=1:min(5, t+1)
            next[p] = maximum([abs(i - p) ≤ d ? dp[i] : 0 for i in 1:5])
            if p == x
                next[p] += a
            end
        end
        dp = next
        current = t
    end
    maximum(dp)
end

println(solve())
