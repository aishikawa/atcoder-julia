function solve()
    N = parse(Int, readline())
    P = [parse(Int, x) for x in split(readline())]
    ans = 0
    for p in P[2:end]
        ans = max(ans, p - P[1] + 1)
    end
    ans
end

println(solve())
