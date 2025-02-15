function solve()
    N, K = [parse(Int, x) for x in split(readline())]
    m = Vector{Tuple{Int, Int}}(undef, N)
    t = 0
    for i=1:N
        a, b = [parse(Int, x) for x in split(readline())]
        m[i] = (a, b)
        t += b
    end
    if K ≥ t
        return 1
    end

    sort!(m)
    for (a, b) in m
        t = t-b
        if K ≥ t
            return a+1
        end
    end
end

println(solve())
