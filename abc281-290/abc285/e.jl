function solve()
    N = parse(Int, readline())
    A = [parse(Int, x) for x in split(readline())]
    if N == 1
        return 0
    end

    dp = zeros(Int, N)
    dp[2] = A[1]

    for i=3:N
        for j=2:i
            k = min(j-1, i-j+1)
            dp[i] += A[k]
        end

        for j=1:i-1
            dp[i] = max(dp[i], dp[j]+dp[i-j])
        end
    end

    dp[N]
end

println(solve())
