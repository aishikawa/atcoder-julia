function solve()
    N, K = [parse(Int, x) for x in split(readline())]
    A = [parse(Int, x) for x in split(readline())]

    t = K
    ans = 0
    for a in A
        if t ≥ a
            t -= a
        else
            ans += 1
            t = K-a
        end
    end
    ans + 1
end

println(solve())
