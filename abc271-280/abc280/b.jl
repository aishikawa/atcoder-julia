function solve()
    N = parse(Int, readline())
    Ss = [parse(Int, x) for x in split(readline())]

    ans = zeros(Int, N)
    cum = 0
    for i=1:N
        ans[i] = Ss[i] - cum
        cum += ans[i]
    end

    join(ans, " ")
end

println(solve())
