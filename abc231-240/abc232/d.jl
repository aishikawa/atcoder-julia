function solve()
    h, w = [parse(Int, x) for x in split(readline())]
    cs = Vector{String}()
    for _=1:h
        push!(cs, readline())
    end

    dp = zeros(Int, h, w)
    dp[1, 1] = 1
    ret = 1

    for i=1:h, j=1:w
        v = dp[i, j]
        if cs[i][j] == '#'
            continue
        end
        if i > 1 && cs[i-1][j] == '.' && dp[i-1, j] > 0
            v = max(v, dp[i-1, j]+1)
        end
        if j > 1 && cs[i][j-1] == '.' && dp[i, j-1] > 0
            v = max(v, dp[i, j-1]+1)
        end
        dp[i, j] = v
        ret = max(v, ret)
    end
    ret
end

println(solve())
