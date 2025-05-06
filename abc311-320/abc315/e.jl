function solve()
    N = parse(Int, readline())
    graph = [Set{Int}() for _=1:N]
    for i=1:N
        a = [parse(Int, x) for x in split(readline())]
        for c in a[2:end]
            push!(graph[i], c)
        end
    end

    ans = []
    visited = Set{Int}()
    function dfs(v)
        push!(visited, v)
        for u in graph[v]
            if u ∉ visited
                dfs(u)
            end
        end
        push!(ans, v)
    end

    dfs(1)

    join(ans[1:end-1], " ")
end

println(solve())
