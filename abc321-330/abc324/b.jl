function solve()
    N = parse(Int, readline())
    while N % 2 == 0
        N = N ÷ 2
    end
    while N % 3 == 0
        N = N ÷ 3
    end
    N == 1 ? "Yes" : "No"
end

println(solve())
