function solve()
    N, M = [parse(Int, x) for x in split(readline())]
    graph = [Vector{Int}() for _=1:N]
    for _=1:M
        u, v = [parse(Int, x) for x in split(readline())]
        push!(graph[u], v)
        push!(graph[v], u)
    end

    unsearched = Set{Int}(1:N)
    while !isempty(unsearched)
        nv = 0
        ne = 0
        st = [pop!(unsearched)]
        while !isempty(st)
            v = pop!(st)
            nv += 1
            for u in graph[v]
                ne += 1
                if u ∈ unsearched
                    push!(st, u)
                    delete!(unsearched, u)
                end
            end
        end
        if 2nv ≠ ne
            return "No"
        end
    end
    "Yes"
end

println(solve())
