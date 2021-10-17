function solve()
    n, m = [parse(Int, x) for x in split(readline())]
    edges = [Set{Int}() for _ in 1:n]
    for _ in 1:m
        a, b = [parse(Int, x) for x in split(readline())]
        push!(edges[a], b)
        push!(edges[b], a)
    end

    frontier = [1]
    parent = zeros(Int, n)
    parent[1] = 1
    while length(frontier) > 0
        v = popfirst!(frontier)
        for e in edges[v]
            if parent[e] == 0
                parent[e] = v
                push!(frontier, e)
            end
        end
    end

    println("Yes")
    for p in parent[2:end]
        println(p)
    end
end

solve()
