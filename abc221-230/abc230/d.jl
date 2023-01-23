function solve()
    n, d = [parse(Int, x) for x in split(readline())]
    walls = Vector{Tuple{Int, Int}}()
    for _=1:n
        l, r = [parse(Int, x) for x in split(readline())]
        push!(walls, (r, l))
    end
    ret = 0
    p = -10d
    sort!(walls)
    for (r, l) in walls
        if p + d ≤ l
            ret += 1
            p = r
        end
    end

    ret
end

println(solve())
