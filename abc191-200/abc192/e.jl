import DataStructures: PriorityQueue, enqueue!, peek, dequeue!


function readinstance()
    n, m, x, y = [parse(Int, x) for x in split(readline())]
    edges = Dict{Int, Set{Tuple{Int, Int, Int}}}()
    for i=1:n
        edges[i] = Set{Tuple{Int, Int, Int}}()
    end
    for i=1:m
        a, b, t, k = [parse(Int, x) for x in split(readline())]
        push!(edges[a], (b, t, k))
        push!(edges[b], (a, t, k))
    end
    n, m, x, y, edges
end

function solve()
    n, m, x, y, edges = readinstance()
    fixed = Dict{Int, Int}()
    unfixed = PriorityQueue{Int, Int}()
    for i=1:n
        enqueue!(unfixed, i, i == x ? 0 : Inf)
    end

    while length(unfixed) != 0
        v, d = peek(unfixed)
        dequeue!(unfixed)
        if d == Inf
            return -1
        end
        if v == y
            return d
        end
        fixed[v] = d
        for (b, t, k) in edges[v]
            if b ∉ keys(fixed)
                dd = ceil(Int, d / k) * k + t
                if dd < unfixed[b]
                    unfixed[b] = dd
                end
            end
        end
    end

    y ∈ keys(fixed) ? fixed[y] : -1
end

println(solve())
