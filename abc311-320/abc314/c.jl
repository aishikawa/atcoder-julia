function solve()
    N, M = [parse(Int, x) for x in split(readline())]
    S = collect(readline())
    C = [parse(Int, x) for x in split(readline())]

    s = [Vector{Char}() for _=1:M]
    for i in 1:N
        push!(s[C[i]], S[i])
    end

    indexs = ones(Int, M)
    ans = Vector{Char}(undef, N)
    for i=1:N
        color = C[i]
        if 1 ≤ indexs[color]-1
            ans[i] = s[color][indexs[color]-1]
        else
            ans[i] = s[color][end]
        end
        indexs[color] += 1
    end

    String(ans)
end

println(solve())
