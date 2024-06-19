function solve()
    N, M = [parse(Int, x) for x in split(readline())]
    As = [parse(Int, x) for x in split(readline())]

    s = [Set{Int}() for _=1:N]
    s[1] = Set{Int}(1:M)

    for (i, a) in enumerate(As)
        ii = -1
        if i ∈ s[a]
            ii = a
            delete!(s[a], i)
        elseif i ∈ s[a+1]
            ii = a+1
            delete!(s[a+1], i)
        end
        s[a], s[a+1] = s[a+1], s[a]
        if ii > 0
            push!(s[ii], i)
        end
    end

    ans = zeros(Int, M)
    for (i, ss) in enumerate(s)
        for sss in ss
            ans[sss] = i
        end
    end

    for a in ans
        println(a)
    end
end

solve()
