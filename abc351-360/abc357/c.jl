function solve()
    N = parse(Int, readline())

    l = 1
    ans = fill('#', 1, 1)
    for i=1:N
        nl = 3^i
        next = fill('.', nl, nl)
        next[1:l, 1:l] = next[1:l, l+1:2l] = next[1:l, 2l+1:3l] = ans
        next[l+1:2l, 1:l] = next[l+1:2l, 2l+1:3l] = ans
        next[2l+1:3l, 1:l] = next[2l+1:3l, l+1:2l] = next[2l+1:3l, 2l+1:3l] = ans

        l = nl
        ans = next
    end

    for i=1:3^N
        println(String(ans[i, :]))
    end
end

solve()
