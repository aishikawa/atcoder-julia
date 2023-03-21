using DataStructures

function solve()
    n, m, q = [parse(Int, x) for x in split(readline())]
    edges = Vector{Tuple{Int, Int, Int, Int, Int}}();
    for i=1:m
        a, b, c = [parse(Int, x) for x in split(readline())]
        push!(edges, (c, a, b, 1, i))
    end
    for i=1:q
        u, v, w = [parse(Int, x) for x in split(readline())]
        push!(edges, (w, u, v, 2, i))
    end

    ret = repeat(["No"], q)
    sort!(edges)
    ds = IntDisjointSets(n)
    for (w, u, v, t, i) in edges
        if !in_same_set(ds, u, v)
            if t == 2
                ret[i] = "Yes"
            else
                union!(ds, u, v)
            end
        end
    end

    for r in ret
        println(r)
    end
end

solve()
