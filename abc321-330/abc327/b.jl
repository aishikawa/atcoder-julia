function solve()
    B = parse(Int, readline())
    i = 1
    while i^i < B
        i += 1
    end

    i^i == B ? i : -1
end

println(solve())
