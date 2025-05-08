function solve()
    N, M = [parse(Int, x) for x in split(readline())]
    edges = zeros(Int, N, N)
    for i=1:M
        A, B, C = [parse(Int, x) for x in split(readline())]
        edges[A, B] = C
        edges[B, A] = C
    end

    visited = zeros(Bool, N)
    function dfs(c)::Int
        ret = 0
        for n=1:N
            if !visited[n] && edges[c, n] ≠ 0
                visited[n] = true
                ret = max(ret, edges[c, n] + dfs(n))
                visited[n] = false
            end
        end
        ret
    end

    ans = 0
    for s=1:N-1
        visited .= false
        visited[s] = true
        ans = max(ans, dfs(s))
    end
    ans
end

println(solve())
