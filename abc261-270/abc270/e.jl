function solve()
    n, k = [parse(Int, x) for x in split(readline())]
    as = [parse(Int, x) for x in split(readline())]

    l = 0
    r = maximum(as) + 1

    while l+1 < r
        x = (l + r) ÷ 2
        e = sum([min(x, a) for a in as])
        if e ≤ k
            l = x
        else
            r = x
        end
    end

    e = [min(l, a) for a in as]
    ans = as - e
    rest = k - sum(e)

    i = 1
    while rest > 0
        if ans[i] > 0
            ans[i] -= 1
            rest -= 1
        end
        i += 1
    end

    join(ans, " ")
end

println(solve())
