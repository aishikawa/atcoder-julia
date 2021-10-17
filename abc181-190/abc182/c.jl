function solve()
    ns = [parse(Int, x) for x in readline()]
    l = length(ns)
    m = -1
    for i=1:2^l-1
        s = 0
        for j=0:l-1
            if i & (1<<j) != 0
                s += ns[j+1]
            end
        end
        if s % 3 == 0
            m = max(m, count_ones(i))
        end
    end
    m == -1 ? -1 : l-m
end

println(solve())
