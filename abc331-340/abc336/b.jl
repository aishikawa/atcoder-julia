function solve()
    N = parse(Int, readline())
    ans = 0
    while N % 2 == 0
        N ÷= 2
        ans += 1
    end
    ans
end

println(solve())
