function solve()
    N = parse(Int, readline())
    words = zeros(Int, (N, 2))
    for i=1:N
        s = readline()
        words[i, 1] = s[1] - 'a' + 1
        words[i, 2] = s[end] - 'a' + 1
    end

    dp = zeros(Int, 2^N, 26)
    for i=1:2^N-1
        for c=1:26
            for w=1:N
                include = i & 1 << (w-1)
                nextindex = i - 1 << (w-1)
                if words[w, 1] == c && include ≠ 0 && (nextindex == 0 || dp[nextindex, words[w, 2]] == 0)
                    dp[i, c] = 1
                end
            end
        end
    end
    maximum(dp[2^N-1, :]) == 1 ? "First" : "Second"
end

println(solve())
