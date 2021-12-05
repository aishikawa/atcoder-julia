function solve()
    n = parse(Int, readline())
    (n - 1) ÷ 100 + 1
end

println(solve())
