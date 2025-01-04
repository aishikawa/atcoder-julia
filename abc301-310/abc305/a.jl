function solve()
    N = parse(Int, readline())
    r = N % 5
    if r ≤ 2
        N - r
    else
        N + 5 - r
    end
end

println(solve())
