function solve()
    x = parse(Int, readline())
    x ≥ 0 ? x : 0
end

println(solve())
