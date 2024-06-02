function solve()
    H, W = [parse(Int, x) for x in split(readline())]
    cs = Array{Char, 2}(undef, H, W)
    start = (0, 0)
    for r=1:H
        line = readline()
        c = findfirst('S', line)
        if !isnothing(c)
            start = (r, c)
        end
        cs[r, :] = collect(line)
    end

    adjs = [(start[1], start[2]-1), (start[1], start[2]+1), (start[1]-1, start[2]), (start[1]+1, start[2])]
    for adj in adjs
        if 1 ≤ adj[1] ≤ H && 1 ≤ adj[2] ≤ W && cs[adj[1], adj[2]] == '.'
            searched = Set{Tuple{Int, Int}}([adj])
            queue = [adj]
            while length(queue) ≥ 1
                r, c = popfirst!(queue)
                if r ≥ 2 && cs[r-1, c] == '.' && (r-1, c) ∉ searched
                    if (r-1, c) in adjs
                        return "Yes"
                    end
                    push!(searched, (r-1, c))
                    push!(queue, (r-1, c))
                end
                if r < H && cs[r+1, c] == '.' && (r+1, c) ∉ searched
                    if (r+1, c) in adjs
                        return "Yes"
                    end
                    push!(searched, (r+1, c))
                    push!(queue, (r+1, c))
                end
                if c ≥ 2 && cs[r, c-1] == '.' && (r, c-1) ∉ searched
                    if (r, c-1) in adjs
                        return "Yes"
                    end
                    push!(searched, (r, c-1))
                    push!(queue, (r, c-1))
                end
                if c < W && cs[r, c+1] == '.' && (r, c+1) ∉ searched
                    if (r, c+1) in adjs
                        return "Yes"
                    end
                    push!(searched, (r, c+1))
                    push!(queue, (r, c+1))
                end

            end
        end
    end

    "No"
end

println(solve())
