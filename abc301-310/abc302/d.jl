function solve()
    N, M, D = [parse(Int, x) for x in split(readline())]
    A = [parse(Int, x) for x in split(readline())]
    B = [parse(Int, x) for x in split(readline())]
    sort!(B)

    ans = -1
    for a in A
        i = searchsortedlast(B, a+D)
        if i ≥ 1 && abs(a - B[i]) ≤ D
            ans = max(ans, a+B[i])
        end
    end
    ans
end

println(solve())
