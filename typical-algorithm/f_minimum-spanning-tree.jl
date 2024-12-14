using DataStructures

function kruskal(N::Int, edges::Vector{Tuple{Int, Int, Int}})::Int
    ds = IntDisjointSets(N)
    sort!(edges)

    ans = 0
    for (c, u, v) in edges
        if !in_same_set(ds, u, v)
            union!(ds, u, v)
            ans += c
        end
    end
    ans
end

function prim(N::Int, adjacency_list::Vector{Vector{Tuple{Int, Int}}})::Int
    connected = Set{Int}([1])
    pq = PriorityQueue{Int, Int}()
    for (u, c) in adjacency_list[1]
        if u in keys(pq)
            pq[u] = min(pq[u], c)
        else
            pq[u] = c
        end
    end

    ans = 0
    while length(connected) ≠ N
        (v, c) = dequeue_pair!(pq)
        if v ∉ connected
            ans += c
            push!(connected, v)
            for (u, cc) in adjacency_list[v]
                if u ∉ connected
                    if u in keys(pq)
                        pq[u] = min(pq[u], cc)
                    else
                        pq[u] = cc
                    end
                end
            end
        end
    end
    ans
end

function solve()
    N, M = [parse(Int, x) for x in split(readline())]
    edges = Vector{Tuple{Int, Int, Int}}()
    adjacency_list = [Vector{Tuple{Int, Int}}() for _=1:N]
    for _=1:M
        u, v, c = [parse(Int, x) for x in split(readline())]
        push!(edges, (c, u+1, v+1))
        push!(adjacency_list[u+1], (v+1, c))
        push!(adjacency_list[v+1], (u+1, c))
    end

    kruskal(N, edges)
    # prim(N, adjacency_list)
end

println(solve())
