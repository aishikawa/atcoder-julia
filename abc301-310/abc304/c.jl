function solve()
    N, D = [parse(Int, x) for x in split(readline())]
    D2 = D^2
    coord = Matrix{Int}(undef, N, 2)
    for i=1:N
        coord[i, :] = [parse(Int, x) for x in split(readline())]
    end
    graph = [Vector{Int}() for _=1:N]
    for i=1:N-1, j=i+1:N
        if (coord[i, 1] - coord[j, 1])^2 + (coord[i, 2] - coord[j, 2])^2 ≤ D2
            push!(graph[i], j)
            push!(graph[j], i)
        end
    end

    searched = zeros(Bool, N)
    searched[1] = true
    stack = [1]
    while length(stack) > 0
        u = pop!(stack)
        for v in graph[u]
            if !searched[v]
                push!(stack, v)
                searched[v] = true
            end
        end
    end

    for i=1:N
        println(searched[i] ? "Yes" : "No")
    end

end

solve()
