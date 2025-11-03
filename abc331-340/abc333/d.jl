function num_node(s::Int, graph::Vector{Vector{Int}})::Int
    ans = 0
    searched = Set{Int}([1, s])
    st = [s]
    while !isempty(st)
        u = pop!(st)
        ans += 1
        for v in graph[u]
            if v ∉ searched
                push!(st, v)
                push!(searched, v)
            end
        end
    end
    ans
end


function solve()
    N = parse(Int, readline())
    graph = [Vector{Int}() for _=1:N]
    for _=1:N-1
        u, v = [parse(Int, x) for x in split(readline())]
        push!(graph[u], v)
        push!(graph[v], u)
    end

    l = [num_node(v, graph) for v in graph[1]]
    sum(l) - maximum(l) + 1
end

println(solve())
