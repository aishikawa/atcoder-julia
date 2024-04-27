function solve()
    n = parse(Int, readline())
    uppercase(string(n, base=16, pad=2))
end

println(solve())
