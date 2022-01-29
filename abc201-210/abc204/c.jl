function countdest(src, edges)
    dest = Set{Int}()
    stack = Vector{Int}([src])

    while length(stack) > 0
        v = pop!(stack)
        push!(dest, v)
        for d in edges[v]
            if d ∉ dest
                push!(stack, d)
            end
        end
    end
    length(dest)
end

function solve()
    n, m = [parse(Int, x) for x in split(readline())]
    edges = [Vector{Int}() for _=1:n]
    for _=1:m
        a, b = [parse(Int, x) for x in split(readline())]
        push!(edges[a], b)
    end

    sum([countdest(s, edges) for s in 1:n])
end

println(solve())