using DataStructures

"""
    dijkstra(N::Int, graph::Vector{Vector{Tuple{Int, Int}}}, start::Int)::Vector{Int}

Compute the shortest distances from a start node to all other nodes using Dijkstra's algorithm.

# Arguments
- `N::Int`: the number of nodes in the graph.
- `graph::Vector{Vector{Tuple{Int, Int}}}`: the adjacency list where each node maps to (destination_node, edge_weight).
- `start::Int`: the index of the start node
"""
function dijkstra(N::Int, graph::Vector{Vector{Tuple{Int, Int}}}, start::Int)::Vector{Int}
    pq = PriorityQueue{Int, Int}()
    for i=1:N
        pq[i] = typemax(Int)
    end
    pq[start] = 0

    shortest_distance = fill(typemax(Int), N)

    while !isempty(pq)
        u, d = dequeue_pair!(pq)
        shortest_distance[u] = d
        for (v, c) in graph[u]
            if v ∈ keys(pq) && d+c < pq[v]
                pq[v] = d+c
            end
        end
    end

    shortest_distance
end

function solve()
    N, M = [parse(Int, x) for x in split(readline())]
    graph = [Vector{Tuple{Int, Int}}() for _=1:N]
    for i=1:M
        u, v, c = [parse(Int, x) for x in split(readline())]
        push!(graph[u+1], (v+1, c))
    end
    
    dijkstra(N, graph, 1)[N]
end

println(solve())
