function solve()
    n, m = [parse(Int, x) for x in split(readline())]

    pair = Set{Tuple{Int, Int}}()
    for _=1:m
        l = [parse(Int, x) for x in split(readline())]
        for i=2:l[1], j=i+1:l[1]+1
            push!(pair, (l[i], l[j]))
            push!(pair, (l[j], l[i]))
        end
    end

    length(pair) == n*(n-1) ? "Yes" : "No"
end

println(solve())
