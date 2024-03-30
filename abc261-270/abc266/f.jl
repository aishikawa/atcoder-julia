function find_cycle(g::Vector{Set{Int}}, N::Int)
    graph = deepcopy(g)
    degrees = [length(v) for v in graph]
    queue = [i for (i, d) in enumerate(degrees) if d == 1]

    is_cycle = ones(Bool, N)

    while !isempty(queue)
        v = popfirst!(queue)
        is_cycle[v] = false
        for u in graph[v]
            if degrees[u] >= 2
                degrees[u] -= 1
                if degrees[u] == 1
                    push!(queue, u)
                end
            end
        end
    end

    Set(v for (v, b) in enumerate(is_cycle) if b)
end

function get_group(graph::Vector{Set{Int}}, cycle::Set{Int}, r::Int, groups::Vector{Int})
    stack = [r]
    while length(stack) > 0
        c = pop!(stack)
        groups[c] = r
        for v in graph[c]
            if groups[v] ≠ r && v ∉ cycle
                push!(stack, v)
            end
        end
    end
end

function solve()
    N = parse(Int, readline())
    graph = [Set{Int}() for _=1:N]
    for _=1:N
        u, v = [parse(Int, x) for x in split(readline())]
        push!(graph[u], v)
        push!(graph[v], u)
    end

    cycle = find_cycle(graph, N)
    groups = zeros(Int, N)
    for r in cycle
        get_group(graph, cycle, r, groups)
    end
    
    Q = parse(Int, readline())
    for _=1:Q
        x, y = [parse(Int, x) for x in split(readline())]
        ans = groups[x] == groups[y] ? "Yes" : "No"
        println(ans)
    end
end

solve()
