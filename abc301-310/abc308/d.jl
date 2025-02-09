function solve()
    H, W = [parse(Int, x) for x in split(readline())]
    grid = Matrix{Char}(undef, H, W)
    for i=1:H
        grid[i, :] = collect(readline())
    end

    s = "snuke"

    graph = Dict((i, j)=>Vector{Tuple{Int, Int}}() for i=1:H, j=1:W)
    for i=1:H, j=1:W
        ci = findfirst(grid[i, j], s)
        if !isnothing(ci)
            ci = ci+1 ≤ 5 ? ci+1 : 1
            c = s[ci]

            if i-1 ≥ 1 && grid[i-1, j] == c
                push!(graph[(i, j)], (i-1, j))
            end
            if j-1 ≥ 1 && grid[i, j-1] == c
                push!(graph[(i, j)], (i, j-1))
            end
            if i+1 ≤ H && grid[i+1, j] == c
                push!(graph[(i, j)], (i+1, j))
            end
            if j+1 ≤ W && grid[i, j+1] == c
                push!(graph[(i, j)], (i, j+1))
            end
        end
    end

    st = [(1, 1)]
    searched = Set{Tuple{Int, Int}}()
    while !isempty(st)
        cur = pop!(st)
        push!(searched, cur)
        for ne in graph[cur]
            if ne ∉ searched
                push!(st, ne)
            end
        end
    end

    (H, W) ∈ searched ? "Yes" : "No"
end

println(solve())
