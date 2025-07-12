function solve()
    N, M = [parse(Int, x) for x in split(readline())]
    A = [parse(Int, x) for x in split(readline())]

    ans = zeros(Int, N)
    t = 0
    j = M
    for i = N:-1:1
        if j ≥ 1 && A[j] == i
            t = 0
            j -= 1
        else
            t += 1
        end
        ans[i] = t
    end

    for t in ans
        println(t)
    end
end

solve()
