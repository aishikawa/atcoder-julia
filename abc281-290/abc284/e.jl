function solve()
    N, M = [parse(Int, x) for x in split(readline())]
    graph = [Set{Int}() for _=1:N]
    for _=1:M
        u, v = [parse(Int, x) for x in split(readline())]
        push!(graph[u], v)
        push!(graph[v], u)
    end

    vis = [false for _=1:N]
    ans = 0

    function dfs(c)
        if ans ≥ 1000000
            return
        end

        vis[c] = true
        ans += 1

        for d in graph[c]
            if vis[d] == false
                dfs(d)
            end
        end
        vis[c] = false
    end

    dfs(1)
    
    ans
end

println(solve())
