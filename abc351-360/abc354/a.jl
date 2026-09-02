function solve()
    H = parse(Int, readline())
    t = 0
    d = 0
    while t ≤ H
        t += 2^d
        d += 1
    end
    d
end

println(solve())
