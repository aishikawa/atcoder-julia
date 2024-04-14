function solve()
    n = parse(Int, readline())
    blacks = Vector{Tuple{Int, Int}}()
    for _=1:n
        x, y = [parse(Int, z) for z in split(readline())]
        push!(blacks, (x, y))
    end
    
    graph = [Vector{Int}() for _=1:n]

    for i=1:n-1, j=i+1:n
        b1 = blacks[i]
        b2 = blacks[j]

        if abs(b1[1]-b2[1]) ≤ 1 && abs(b1[2]-b2[2]) ≤ 1 && b1[1]-b2[1] != b2[2]-b1[2]
            push!(graph[i], j)
            push!(graph[j], i)
        end
    end

    ans = 0
    unsearched = Set(1:n)
    while !isempty(unsearched)
        ans += 1
        stack = Vector{Int}([pop!(unsearched)])
        while !isempty(stack)
            v = pop!(stack)
            for u in graph[v]
                if u ∈ unsearched
                    push!(stack, u)
                    pop!(unsearched, u)
                end
            end
        end
    end
    ans
end

println(solve())
