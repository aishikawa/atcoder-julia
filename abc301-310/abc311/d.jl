function solve()
    N, M = [parse(Int, x) for x in split(readline())]
    S = Matrix{Char}(undef, N, M)
    for i in 1:N
        S[i, :] = collect(readline())
    end

    visited = Set{Tuple{Int, Int}}()
    push!(visited, (2, 2))
    searched = Set{Tuple{Int, Int}}()
    push!(searched, (2, 2))
    st = [(2, 2)]
    while !isempty(st)
        c = pop!(st)
        for d in [(-1, 0), (1, 0), (0, -1), (0, 1)]
            n = c
            while S[n[1]+d[1], n[2]+d[2]] ≠ '#'
                n = (n[1]+d[1], n[2]+d[2])
                push!(visited, n)
            end
            if n ∉ searched
                push!(st, n)
                push!(searched, n)
            end
        end
    end

    length(visited)
end

println(solve())
