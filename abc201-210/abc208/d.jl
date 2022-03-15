function solve()
    inf = 10^6 * 400
    n, m = [parse(Int, x) for x in split(readline())]
    edges = zeros(Int, (n, n))
    edges .= inf
    for i=1:n
        edges[i, i] = 0
    end
    for i=1:m
        a, b, c = [parse(Int, x) for x in split(readline())]
        edges[a, b] = c
    end

    ret = 0
    temp = zeros(Int, (n, n))
    for k=1:n
        for s=1:n
            for t=1:n
                temp[s, t] = min(edges[s, t], edges[s, k] + edges[k, t])
                if temp[s, t] < inf
                    ret += temp[s, t]
                end
            end
        end
        edges, temp = temp, edges
    end

    ret
end

println(solve())
