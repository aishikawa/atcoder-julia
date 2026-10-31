function solve()
    N, M = parse.(Int, split(readline()))

    ans = 0
    for i=1:60
        if M >> (i-1) & 1 == 0
            continue
        end
        d, r = divrem(N, 2^i)
        if r < 2^(i-1)
            r = 0
        else
            r = r - 2^(i-1) + 1
        end
        ans += d*2^(i-1)+r
        ans = ans % 998244353
    end
    ans

end

println(solve())
