function solve()
    n = parse(Int, readline())
    sum([x for x in 1:n if x%3≠0 && x%5≠0])
end

println(solve())
