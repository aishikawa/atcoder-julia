 function solve()
    N = parse(Int, readline())
    cards = zeros(Int, (N, 2))
    for i=1:N
        cards[i, :] = [parse(Int, x) for x in split(readline())]
    end

    m = 998244353
    dp = zeros(Int, (N, 2))
    dp[1, :] = [1, 1]

    for i=2:N
        for j=1:2, k=1:2
            if cards[i, j] ≠ cards[i-1, k]
                dp[i, j] = mod(dp[i, j] + dp[i-1, k], m)
            end
        end
    end

    mod(sum(dp[N, :]), m)
 end

 println(solve())
