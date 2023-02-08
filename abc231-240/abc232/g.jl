using DataStructures

function dijkstra(adjacencylist::Vector{Vector{Tuple{Int, Int}}}, s::Int, t::Int)::Int
    pq = PriorityQueue(s => 0)
    fixed = Set{Int}()
    while isempty(pq) == false
        (v1, d) = dequeue_pair!(pq)
        push!(fixed, v1)
        if v1 == t
            return d
        end
        for (v2, w) in adjacencylist[v1]
            if v2 ∉ fixed 
                if !haskey(pq, v2) 
                    enqueue!(pq, v2, d+w)
                elseif pq[v2] > d + w
                    pq[v2] = d+w
                end
            end
        end
    end
end

function solve()
    n, m = [parse(Int, x) for x in split(readline())]
    as = [parse(Int, x) for x in split(readline())]
    bs = [parse(Int, x) for x in split(readline())]

    new_nodes = sort(union([mod(-a, m) for a in as], bs))
    new_node_dict = Dict{Int, Int}()
    nn = n+1
    for node in new_nodes
        new_node_dict[node] = nn
        nn += 1
    end

    num_all_nodes = n + length(new_node_dict)

    graph = [Vector{Tuple{Int, Int}}() for _=1:num_all_nodes]

    for i=1:n
        push!(graph[new_node_dict[bs[i]]], (i, 0))
        push!(graph[i], (new_node_dict[mod(-as[i], m)], 0))
    end

    for i in 1:length(new_nodes)-1
        i1 = new_nodes[i]
        i2 = new_nodes[i+1]
        push!(graph[new_node_dict[i1]], (new_node_dict[i2], i2-i1))
    end
    i1 = new_nodes[end]
    i2 = new_nodes[1]
    push!(graph[new_node_dict[i1]], (new_node_dict[i2], mod(i2-i1, m)))

    dijkstra(graph, 1, n)
end

println(solve())
