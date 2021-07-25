function solve()
    n, m = [parse(Int, x) for x in split(readline())]
    as = [parse(Int, x) for x in split(readline())]
    edges = Dict{Int, Set{Int}}()
    for i=1:n
        edges[i] = Set{Int}()
    end
    for _=1:m
        x, y = [parse(Int, x) for x in split(readline())]
        push!(edges[x], y)
    end

    dp = ones(Int, n) * 10^10
    for i=1:n
        for j in edges[i]
            dp[j] = min(dp[j], dp[i], as[i])
        end
    end
    maximum((as - dp)[2:end])
end

println(solve())
