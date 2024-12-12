"""
    warshall_floyd(N::Int, edge::Matrix{Int})::Matrix{Int}

Compute the shortest distances of all node pairs

# Arguments
- `N::Int`: the number of nodes in the graph.
- `edge::Matrix{Int}: adjacency matrix of the graph.
"""
function warshall_floyd(N::Int, edge::Matrix{Int})::Matrix{Int}
    d = copy(edge)
    for k=1:N, i=1:N, j=1:N
        d[i, j] = min(d[i, j], d[i, k]+d[k, j])
    end
    d
end


function solve()
    N, M = [parse(Int, x) for x in split(readline())]
    d = fill(typemax(Int)÷4, N, N)
    for i=1:N
        d[i, i] = 0
    end
    for i=1:M
        u, v, c = [parse(Int, x) for x in split(readline())]
        d[u+1, v+1] = c
    end
    s = warshall_floyd(N, d)
    sum(s)
end

println(solve())
