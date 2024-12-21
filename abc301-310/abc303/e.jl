function solve()
    N = parse(Int, readline())
    graph = [Vector{Int}() for _=1:N]
    for _=1:N-1
        u, v = [parse(Int, x) for x in split(readline())]
        push!(graph[u], v)
        push!(graph[v], u)
    end

    degrees = [length(graph[i]) for i=1:N]
    s = findfirst(x -> x == 1, degrees)

    ans = Vector{Int}()

    stack = [(s, 0)]
    visited = zeros(Bool, N)
    visited[s] = true
    while !isempty(stack)
        u, d = pop!(stack)
        if d % 3 == 1
            push!(ans, degrees[u])
        end
        for v in graph[u]
            if !visited[v]
                visited[v] = true
                push!(stack, (v, d+1))
            end
        end
    end

    sort!(ans)
    join(ans, " ")
end

println(solve())
