function solve()
    n = parse(Int, readline())
    graph = Dict{Int, Vector{Int}}()
    graph[1] = Vector{Int}()
    for _=1:n
        a, b = [parse(Int, x) for x in split(readline())]
        if a ∉ keys(graph)
            graph[a] = Vector{Int}()
        end
        push!(graph[a], b)
        if b ∉ keys(graph)
            graph[b] = Vector{Int}()
        end
        push!(graph[b], a)
    end

    ans = 1
    stack = [1]
    searched = Set{Int}([1])
    while length(stack) > 0
        v = pop!(stack)
        if v > ans
            ans = v
        end
        for u in graph[v]
            if u ∉ searched
                push!(stack, u)
                push!(searched, u)
            end
        end
    end

    ans
end

println(solve())
