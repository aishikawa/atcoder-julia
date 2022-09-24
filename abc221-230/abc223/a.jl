function solve()
    x = parse(Int, readline())
    x ≠ 0 && x % 100 == 0 ? "Yes" : "No"
end

println(solve())
