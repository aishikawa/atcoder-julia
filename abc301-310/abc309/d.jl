function bfs(s::Int, graph::Vector{Vector{Int}})::Int
    d = 0
    queue = [(s, 0)]
    searched = Set{Int}([s])

    while !isempty(queue)
        u, d = popfirst!(queue)
        for v in graph[u]
            if v ∉ searched
                push!(queue, (v, d+1))
                push!(searched, v)
            end
        end
    end
    d
end

function solve()
    N1, N2, M = [parse(Int, x) for x in split(readline())]
    graph = [Vector{Int}() for _=1:(N1+N2)]
    for _=1:M
        a, b = [parse(Int, x) for x in split(readline())]
        push!(graph[a], b)
        push!(graph[b], a)
    end

    bfs(1, graph) + bfs(N1+N2, graph) + 1
end

println(solve())
