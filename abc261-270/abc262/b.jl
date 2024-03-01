function solve()
    n, m = [parse(Int, x) for x in split(readline())]
    edges = Set{Tuple{Int, Int}}()
    for _=1:m
        u, v = [parse(Int, x) for x in split(readline())]
        push!(edges, (u, v))
    end

    ret = 0
    for a=1:n-2, b=a+1:n-1, c=b+1:n
        if (a, b) ∈ edges && (b, c) ∈ edges && (a, c) ∈ edges
            ret += 1
        end
    end
    ret
end

println(solve())
