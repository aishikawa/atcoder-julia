function solve()
    N = parse(Int, readline())
    S = [parse(Int, x) for x in collect(readline())] 

    dp = zeros(Int, N)
    dp[1] = S[1]
    for i=2:N
        if S[i] == 0
            dp[i] = i-1
        else
            dp[i] = (i-1) - dp[i-1] + 1
        end
    end
    sum(dp)
end

println(solve())
