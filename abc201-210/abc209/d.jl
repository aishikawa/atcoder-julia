function color_node(n::Int, edge::Dict{Int, Set{Int}})::Vector{Int}
    color = zeros(Int, n)
    color[1] = 1
    queue = [1]
    while length(queue) > 0
        v = popfirst!(queue)
        for vv in edge[v]
            if color[vv] == 0
                push!(queue, vv)
                color[vv] = -color[v]
            end
        end
    end
    color
end

function solve()
    n, q = [parse(Int, x) for x in split(readline())]
    edge = Dict{Int, Set{Int}}()
    for i=1:n
        edge[i] = Set{Int}()
    end
    for _=1:n-1
        a, b = [parse(Int, x) for x in split(readline())]
        push!(edge[a], b)
        push!(edge[b], a)
    end

    color = color_node(n, edge)

    for _=1:q
        c, d = [parse(Int, x) for x in split(readline())]
        if color[c] == color[d]
            println("Town")
        else
            println("Road")
        end
    end
end

solve()
