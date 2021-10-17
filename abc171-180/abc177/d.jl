using DataStructures

function solve()
    n, m = [parse(Int, x) for x in split(readline())]
    ds = IntDisjointSets(n)
    for _=1:m
        a, b = [parse(Int, x) for x in split(readline())]
        union!(ds, a, b)
    end

    size = zeros(Int, n)
    for x=1:n
        root = find_root!(ds, x)
        size[root] += 1
    end
    maximum(size)
end

println(solve())
