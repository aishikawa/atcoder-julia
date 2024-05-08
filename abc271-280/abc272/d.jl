function solve()
    n, m = [parse(Int, x) for x in split(readline())]
    d = [x for x=0:floor(Int, sqrt(m))]
    pairs = Vector{Tuple{Int, Int}}()
    
    for dx in d, dy in d
        if dx^2 + dy^2 == m
            push!(pairs, (dx, dy))
        end
    end

    ans = fill(-1, (n, n))
    ans[1, 1] = 0
    queue = [(1, 1)]
    while !isempty(queue)
        x, y = popfirst!(queue)
        for (p1, p2) in pairs
            for a in [-1, 1], b in [-1, 1]
                xx = x + a*p1
                yy = y + b*p2
                if 1 ≤ xx ≤ n && 1 ≤ yy ≤ n && ans[xx, yy] == -1
                    ans[xx, yy] = ans[x, y] + 1
                    push!(queue, (xx, yy))
                end
            end
            for a in [-1, 1], b in [-1, 1]
                xx = x + a*p2
                yy = y + b*p1
                if 1 ≤ xx ≤ n && 1 ≤ yy ≤ n && ans[xx, yy] == -1
                    ans[xx, yy] = ans[x, y] + 1
                    push!(queue, (xx, yy))
                end
            end
        end
    end
    for i=1:n
        println(join(ans[i,:], " "))
    end
end

solve()
