function solve()
    N, M = [parse(Int, x) for x in split(readline())]
    A = [parse(Int, x) for x in split(readline())]
    S = Matrix{Char}(undef, N, M)
    s = collect(1:N)
    for i=1:N
        S[i, :] = collect(readline())
        for j=1:M
            if S[i, j] == 'o'
                s[i] += A[j]
            end
        end
    end
    maxscore = maximum(s)
    t = sortperm(A, rev=true)
    for i=1:N
        if s[i] == maxscore
            println(0)
        else
            j = 1
            ans = 0
            while s[i] ≤ maxscore
                if S[i, t[j]] == 'x'
                    s[i] += A[t[j]]
                    ans += 1
                end
                j += 1
            end
            println(ans)
        end
    end
end

solve()
