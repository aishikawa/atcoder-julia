function solve()
    n = parse(Int, readline())
    ab = Vector{Tuple{Int, Int}}()
    for i=1:n
        a, b = [parse(Int, x) for x in split(readline())]
        push!(ab, (a, 1))
        push!(ab, (a+b, -1))
    end
    sort!(ab)
    k = 0
    now = 1
    ans = zeros(Int, n)
    for (d, t) in ab
        if k ≥ 1
            ans[k] += d - now
        end
        k += t
        now = d
    end
    join(ans, " ")
end

println(solve())
