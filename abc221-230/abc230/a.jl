function solve()
    n = parse(Int, readline())
    if n ≥ 42
        n += 1
    end
    n = string(n, pad=3)
    "AGC$(n)"
end

println(solve())
