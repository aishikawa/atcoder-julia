function solve()
    N, K = [parse(Int, x) for x in split(readline())]
    S = readline()

    p = 0
    ans = ['x' for _=1:N]
    for i=1:N
        if S[i] == 'o'
            ans[i] = 'o'
            p += 1
        end
        if p ≥ K
            break
        end
    end

    String(ans)
end

println(solve())
