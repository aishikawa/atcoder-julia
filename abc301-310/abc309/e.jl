function solve()
    N, M = [parse(Int, x) for x in split(readline())]
    ps = zeros(Int, N)
    ps[2:end] = [parse(Int, x) for x in split(readline())]
    graph = [Vector{Int}() for _=1:N]
    for i=2:N
        push!(graph[ps[i]], i)
    end

    insrance = fill(-1, N)
    for _=1:M
        x, y = [parse(Int, x) for x in split(readline())]
        insrance[x] = max(insrance[x], y)
    end

    ans = 0
    function dfs(v::Int, d::Int)
        d = max(d, insrance[v])
        if d ≥ 0
            ans += 1
        end
        for u ∈ graph[v]
            dfs(u, d-1)
        end
    end

    dfs(1, -1)
    ans
end

println(solve())
