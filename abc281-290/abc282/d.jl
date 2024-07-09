function solve()
    N, M = [parse(Int, x) for x in split(readline())]
    graph = [Set{Int}() for _=1:N]
    for _=1:M
        u, v = [parse(Int, x) for x in split(readline())]
        push!(graph[u], v)
        push!(graph[v], u)
    end

    color = zeros(Int, N)
    components = Set{Set{Int}}()

    unsearched = Set{Int}(1:N)
    while !isempty(unsearched)
        v0 = pop!(unsearched)
        color[v0] = 1
        comp = [Set{Int}(), Set{Int}()]
        st = [v0]

        while !isempty(st)
            v = pop!(st)
            if color[v] == 1
                push!(comp[1], v)
            else
                push!(comp[2], v)
            end
            for u in graph[v]
                if u ∈ unsearched
                    push!(st, u)
                    color[u] = -color[v]
                    delete!(unsearched, u)
                elseif color[u] == color[v]
                    return 0
                end
            end
        end

        push!(components, comp[1])
        push!(components, comp[2])
    end

    ans = 0
    for comp ∈ components
        s = length(comp)
        for i ∈ comp
            ans += (N - s - length(graph[i]))
        end
    end
    ans ÷ 2
end

println(solve())
