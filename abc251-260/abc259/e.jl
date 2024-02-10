function solve()
    n = parse(Int, readline())
    as = Vector{Vector{Tuple{Int, Int}}}(undef, n)
    l = Dict{Int, Tuple{Int, Int}}()
    for i=1:n
        m = parse(Int, readline())
        as[i] = Vector{Tuple{Int, Int}}(undef, m)
        for j=1:m
            p, e = [parse(Int, x) for x in split(readline())]
            as[i][j] = (p, e)
            if p ∈ keys(l)
                if e > l[p][1]
                    l[p] = (e, 1)
                elseif e == l[p][1]
                    l[p] = (e, l[p][2] + 1)
                end
            else
                l[p] = (e, 1)
            end
        end
    end
    
    c = 0
    for i=1:n
        if any([l[p][1] == e && l[p][2] == 1 for (p, e) in as[i]])
            c += 1
        end
    end
    min(c+1, n)
end

println(solve())
