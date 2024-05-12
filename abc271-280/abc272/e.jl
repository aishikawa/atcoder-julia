function solve()
    n, m = [parse(Int, x) for x in split(readline())]
    as = [parse(Int, x) for x in split(readline())]

    vals = [Set{Int}() for _=1:m]

    for (i, a) in enumerate(as)
        if a >= n
            continue
        end
        l = a >= 0 ? 1 : ceil(Int, -a / i)
        r = min(m, ceil(Int, (n - a) / i))
        for j=l:r
            push!(vals[j], a + i*j)
        end
    end

    for i=1:m
        ans = 0
        while ans ∈ vals[i]
            ans += 1
        end
        println(ans)
    end
end

solve()
