function solve()
    n, k = [parse(Int, x) for x in split(readline())]
    a = [parse(Int, x) for x in split(readline())]

    current = 1
    path = [1]
    visited = Set{Int}(1)

    while a[current] ∉ visited
        current = a[current]
        append!(path, current)
        push!(visited, current)
    end
    append!(path, a[current])

    if k < length(path)
        path[k+1]
    else
        cycle_start = findfirst(x->(x==path[end]), path)
        k = k - cycle_start
        path = path[cycle_start+1:end]
        k = k % length(path) + 1
        path[k]
    end
end

println(solve())
