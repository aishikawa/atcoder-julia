function solve()
    N, M = [parse(Int, x) for x in split(readline())]
    C = zeros(Float64, N)
    P = zeros(Int, N)
    S = Vector{Vector{Int}}(undef, N)
    for i=1:N
        l = [parse(Int, x) for x in split(readline())]

        S[i] = [s for s in l[3:end] if s ≠ 0]
        P[i] = length(S[i])
        C[i] = l[2]/P[i] * l[1]
    end

    dp = fill(Inf, M)
    
    for j=1:N
        dp[1] = min(dp[1], C[j])
    end

    for i=2:M
        for j=1:N
            jj = 0
            for s in S[j]
                if s == 0
                    
                elseif s ≥ i
                    jj += C[j]/P[j]
                else
                    jj += (dp[i-s] + C[j])/P[j]
                end
            end
            dp[i] = min(dp[i], jj)
        end
    end

    dp[M]
end

println(solve())
