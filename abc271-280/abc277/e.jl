function solve()
    N, M, K = [parse(Int, x) for x in split(readline())]
    graph = [Vector{Tuple{Int, Int}}() for _=1:N]
    for _=1:M
        u, v, a = [parse(Int, x) for x in split(readline())]
        push!(graph[u], (v, a))
        push!(graph[v], (u, a))
    end
    ss = Set([parse(Int, x) for x in split(readline())])

    ans = -1

    queue = [(1, 1, 0)]
    searched = Set([(1, 1)])
    while length(queue) > 0
        v, a, d = popfirst!(queue)
        if v == N
            ans = ans < 0 ? d : min(ans, d)
        end
        if v ∈ ss && (v, 1-a) ∉ searched
            pushfirst!(queue, (v, 1-a, d))
            push!(searched, (v, 1-a))
        end

        for (u, aa) in graph[v]
            if aa == a && (u, a) ∉ searched
                push!(queue, (u, a, d+1))
                push!(searched, (u, a))
            end
        end
    end
    ans
end

println(solve())
