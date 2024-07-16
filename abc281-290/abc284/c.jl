function solve()
    N, M = [parse(Int, x) for x in split(readline())]
    graph = [Set{Int}() for _=1:N]
    for i=1:M
        u, v = [parse(Int, x) for x in split(readline())]
        push!(graph[u], v)
        push!(graph[v], u)
    end

    unsearched = Set{Int}(1:N)
    ans = 0
    while !isempty(unsearched)
        ans += 1
        st = [pop!(unsearched)]
        while !isempty(st)
            v = pop!(st)
            for u in graph[v]
                if u ∈ unsearched
                    push!(st, u)
                    delete!(unsearched, u)
                end
            end
        end
    end
    ans
end

println(solve())
