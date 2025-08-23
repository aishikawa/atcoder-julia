function solve()
    N = parse(Int, readline())
    while true
        x = N ÷ 100
        y = (N - 100x) ÷ 10
        z = N % 10
        if x * y == z
            break
        end
        N += 1
    end
    N
end

println(solve())
