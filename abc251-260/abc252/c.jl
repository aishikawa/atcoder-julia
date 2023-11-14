function solve()
    n = parse(Int, readline())
    m = zeros(Int, 10, 10)
    for _=1:n
        s = [parse(Int, x) for x in  readline()]
        for i in 1:10
            m[s[i]+1, i] += 1
        end
    end
    ret = (n+1) * 10 
    for d=1:10
        t = 0
        for i=1:10
            t = max(t, (m[d, i]-1) * 10 + i)
        end
        ret = min(ret, t-1)
    end

    ret
end

println(solve())
