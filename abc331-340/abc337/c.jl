function solve()
    N = parse(Int, readline())
    A = [parse(Int, x) for x in split(readline())]

    s = 0
    t = zeros(Int, N)
    for (i, a) in enumerate(A)
        if a ≠ -1
            t[a] = i
        else
            s = i
        end
    end

    ans = zeros(Int, N)
    for i=1:N
        ans[i] = s
        s = t[s]
    end

    join(ans, " ")
end

println(solve())
