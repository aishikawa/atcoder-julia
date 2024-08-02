function solve()
    N, X = [parse(Int, x) for x in split(readline())]
    A = zeros(Int, N)
    B = zeros(Int, N)
    for i=1:N
        A[i], B[i] = [parse(Int, x) for x in split(readline())]
    end

    dp = zeros(Bool, (N, X))
    for i=1:N
        for j=1:B[i]
            if A[i] * j ≤ X
                dp[i, A[i]*j] = true
            end
        end
        if i > 1
            for j=1:X
                dp[i, j] = dp[i, j] || dp[i-1, j]
                for k=1:B[i]
                    if j-A[i]*k ≥ 1
                        dp[i, j] = dp[i, j] || dp[i-1, j-A[i]*k]
                    end
                end
            end
        end
    end
    dp[N, X] ? "Yes" : "No"
end

println(solve())
