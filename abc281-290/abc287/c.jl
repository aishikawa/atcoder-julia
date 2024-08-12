using DataStructures

function solve()
    N, M = [parse(Int, x) for x in split(readline())]
    if M ≠ N-1
        return "No"
    end
    degrees = zeros(Int, N)
    ds = IntDisjointSets(N)
    for _=1:M
        u, v = [parse(Int, x) for x in split(readline())]
        degrees[u] += 1
        degrees[v] += 1
        if in_same_set(ds, u, v) || degrees[u] ≥ 3 || degrees[v] ≥ 3
            return "No"
        end
        union!(ds, u, v)
    end

    "Yes"
end

println(solve())
