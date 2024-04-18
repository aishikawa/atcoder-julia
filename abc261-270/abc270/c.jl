function dfs(v::Int, graph::Vector{Vector{Int}}, path::Vector{Int}, y::Int)
    for u in graph[v]
        if length(path) == 1 || u ≠ path[end-1]
            push!(path, u)
            if (u == y)
                println(join(path, " "))
            end
            dfs(u, graph, path, y)
            pop!(path)
        end
    end
end

function solve()
    n, x, y = [parse(Int, x) for x in split(readline())]
    graph = [Vector{Int}() for _=1:n]
    for _=1:n-1
        u, v = [parse(Int, x) for x in split(readline())]
        push!(graph[u], v)
        push!(graph[v], u)
    end

    path = [x]
    dfs(x, graph, path, y)
end

solve()
