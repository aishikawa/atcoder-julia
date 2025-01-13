function solve()
    N = parse(Int, readline())
    A = [parse(Int, x) for x in split(readline())]
    f = zeros(Int, N)
    i = 1
    ans = zeros(Int, N)
    for a in A
        if f[a] == 1
            ans[i] = a
            i += 1
        end
        f[a] += 1
    end

    join(ans, " ")
end

println(solve())
