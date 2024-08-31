function solve()
    N = parse(Int, readline())
    S = readline()
    
    c = (0, 0)
    t = Set{Tuple{Int, Int}}([c])
    for s in S
        if s == 'R'
            c = (c[1]+1, c[2])
        elseif s == 'L'
            c = (c[1]-1, c[2])
        elseif s == 'U'
            c = (c[1], c[2]+1)
        else
            c = (c[1], c[2]-1)
        end
        if c ∈ t
            return "Yes"
        end
        push!(t, c)
    end
    "No"
end

println(solve())
