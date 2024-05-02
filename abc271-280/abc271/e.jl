function solve()
    n, m, k = [parse(Int, x) for x in split(readline())]

    edges = zeros(Int, (m, 3))
    for i=1:m
        edges[i, :] = [parse(Int, x) for x in split(readline())]
    end
    es = [parse(Int, x) for x in split(readline())]

    distance = fill(-1, n)
    distance[1] = 0

    for e in es
        a, b, c = edges[e, :]
        if distance[a] ≥ 0
            d = distance[a] + c
            if distance[b] < 0 || d < distance[b]
                distance[b] = d
            end
        end
    end

    distance[n]
end

println(solve())
