function solve()
    N = parse(Int, readline())
    A = zeros(Int, N, N)
    for i=1:N
        A[i, :] = [parse(Int, x) for x in split(readline())]
    end

    S = (1 << N) - 1

    dp = fill(10^9 * 14, S, N)
    dp[1, 1] = 0
    for s=1:S, p=1:N, q=1:N
        if s & 1<<(q-1) == 0
            dp[s|1<<(q-1), q] = min(dp[s|1<<(q-1), q], dp[s, p] + A[p, q])
        end
    end

    minimum([dp[(1<<N)-1, i] + A[i, 1] for i=2:N])
end

println(solve())
