function solve()
    n, m = [parse(Int, x) for x in split(readline())]
    ans = [Vector{Int}() for _=1:n]
    for _=1:m
        a, b = [parse(Int, x) for x in split(readline())]
        push!(ans[a], b)
        push!(ans[b], a)
    end

    for a in ans
        println("$(length(a)) $(join(sort(a), " "))")
    end
end

solve()
