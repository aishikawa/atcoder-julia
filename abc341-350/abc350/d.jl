function solve()
    N, M = [parse(Int, x) for x in split(readline())]
    graph = [Vector{Int}() for _=1:N]
    for _=1:M
        A, B = [parse(Int, x) for x in split(readline())]
        push!(graph[A], B)
        push!(graph[B], A)
    end

    unsearched = Set{Int}(1:N)
    ans = 0

    while length(unsearched) ≠ 0
        s = pop!(unsearched)
        st = [s]
        num_edges = 0
        num_vertices = 0
        while !isempty(st)
            v = pop!(st)
            num_vertices += 1
            for w in graph[v]
                num_edges += 1
                if w in unsearched
                    delete!(unsearched, w)
                    push!(st, w)
                end
            end
        end
        num_edges ÷= 2
        ans += num_vertices*(num_vertices-1)÷ 2 - num_edges
    end
    ans
end

println(solve())
