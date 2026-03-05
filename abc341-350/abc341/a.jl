function solve()
    N = parse(Int, readline())
    ans = "1"
    for _=1:N
        ans *= "01"
    end
    ans
end

println(solve())
