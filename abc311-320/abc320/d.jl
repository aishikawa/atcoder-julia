function solve()
    N, M = [parse(Int, x) for x in split(readline())]
    graph = [Vector{Tuple{Int, Int, Int}}() for _ in 1:N]
    
    for i=1:M
        a, b, x, y = [parse(Int, x) for x in split(readline())]
        push!(graph[a], (b, x, y))
        push!(graph[b], (a, -x, -y))
    end

    searched = Dict(1 => (0, 0))
    stack = [1]
    while length(stack) > 0
        s = pop!(stack)
        for (t, x, y) in graph[s]
            if t ∉ keys(searched)
                push!(stack, t)
                searched[t] = (searched[s][1]+x, searched[s][2]+y)
            end
        end
    end

    for i=1:N
        if i ∈ keys(searched)
            println("$(searched[i][1]) $(searched[i][2])")
        else
            println("undecidable")
        end
    end
end

solve()
