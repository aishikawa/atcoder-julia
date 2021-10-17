function solve()
    n, m = [parse(Int, x) for x in split(readline())]
    as = [parse(Int, x) for x in split(readline())]
    ret = maximum(as) + 1

    pos = [[0] for _ in 1:ret]
    for (i, a) in enumerate(as)
        push!(pos[a+1], i)
    end
    for v in values(pos)
        push!(v, n+1)
    end
    
    for (k, v) in pairs(pos)
        for i in 1:length(v)-1
            if v[i+1] - v[i] > m
                ret = min(ret, k-1)
            end
        end
    end
    ret
end

println(solve())
