function solve()
    x = readline()
    d = Dict()
    for (i, xx) in enumerate(x)
        d[xx] = i
    end
    n = parse(Int, readline())
    ss = []
    for _=1:n
        push!(ss, readline())
    end

    function lt(x, y)
        for i=1:min(length(x), length(y))
            if d[x[i]] < d[y[i]]
                return true
            elseif  d[x[i]] > d[y[i]]
                return false
            end
        end
        if length(x) < length(y)
            return true
        end
        return false
    end

    ret = sort(ss, lt=lt)

    for s in ret
        println(s)
    end
end

solve()
