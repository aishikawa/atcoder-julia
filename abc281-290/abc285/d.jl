function solve()
    N = parse(Int, readline())
    graph = Dict{String, Set{String}}()
    for _=1:N
        s, t = split(readline())
        if s ∉ keys(graph)
            graph[s] = Set{String}()
        end
        if t ∉ keys(graph)
            graph[t] = Set{String}()
        end
        push!(graph[s], t)
    end

    unsearched = Set(keys(graph))

    while !isempty(unsearched)
        s = pop!(unsearched)
        st = [s]
        ancestors = Set{String}()
        while !isempty(st)
            u = pop!(st)
            for v in graph[u]
                if v ∈ ancestors
                    return "No"
                end
                if v ∈ unsearched
                    delete!(unsearched, v)
                    push!(ancestors, u)
                    push!(st, v)
                end
            end
        end
    end

    "Yes"
end

println(solve())
