function solve()
    q = parse(Int, readline())
    v1 = Vector{Int}([])
    v2 = Vector{Int}([])
    for _=1:q
        l = readline()
        if l[1] == '1'
            x = parse(Int, split(l)[2])
            push!(v2, x)
        elseif l[1] == '2'
            if length(v1) > 0
                println(popfirst!(v1))
            else
                println(popfirst!(v2))
            end
        elseif l[1] == '3'
            for x in v2
                i = searchsortedfirst(v1, x)
                insert!(v1, i, x)
            end
            v2 = Vector{Int}([])
        end
    end
end

solve()
