function solve()
    N = parse(Int, readline())
    As = [parse(Int, x) for x in split(readline())]

    ans = zeros(Int, 2N+1)
    for (i, a) in enumerate(As)
        ans[2i] = ans[a] + 1
        ans[2i+1] = ans[a] + 1
    end

    join(ans, "\n")
end

println(solve())
