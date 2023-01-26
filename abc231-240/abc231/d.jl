using DataStructures

function solve()
    n, m = [parse(Int, x) for x in split(readline())]
    degree = zeros(Int, n)
    ds = IntDisjointSets(n)
    for _=1:m
        a, b = [parse(Int, x) for x in split(readline())]
        if degree[a] ≥ 2 || degree[b] ≥ 2 || in_same_set(ds, a, b)
            return "No"
        end
        degree[a] += 1
        degree[b] += 1
        union!(ds, a, b)
    end
    "Yes"
end

println(solve())
