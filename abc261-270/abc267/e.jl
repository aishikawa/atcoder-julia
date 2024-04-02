using DataStructures

function solve()
    n, m = [parse(Int, x) for x in split(readline())]
    as = [parse(Int, x) for x in split(readline())]
    values = zeros(Int, n)
    graph = [Vector{Int}() for _=1:n]
    for _=1:m
        u, v = [parse(Int, x) for x in split(readline())]
        push!(graph[u], v)
        values[u] += as[v]
        push!(graph[v], u)
        values[v] += as[u]
    end
    
    ans = 0
    removed = Set{Int}()
    pq = PriorityQueue{Int, Int}(zip(1:n, values))
    while length(removed) < n
        (v, c) = dequeue_pair!(pq)
        ans = max(ans, c)
        push!(removed, v)

        for u in graph[v]
            if u ∉ removed
                pq[u] -= as[v]
            end
        end
    end

    ans
end

println(solve())
