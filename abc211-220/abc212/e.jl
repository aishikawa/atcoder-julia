function solve()
    mm = 998244353
    n, m, k = [parse(Int, x) for x in split(readline())]
    noedge = Vector{Tuple{Int, Int}}()
    for _=1:m
        u, v = [parse(Int, x) for x in split(readline())]
        push!(noedge, (u, v))
    end
    numpath = zeros(Int, n)
    numpath[1] = 1
    for i=1:k
        next_numpath = -numpath .+ sum(numpath)
        for (u, v) in noedge
            next_numpath[u] -= numpath[v]
            next_numpath[v] -= numpath[u]
        end
        numpath = next_numpath .% mm
    end
    numpath[1]
end

println(solve())
