function solve()
    N, M = [parse(Int, x) for x in split(readline())]
    t0 = Vector{Int}()
    t1 = Vector{Int}()
    t2 = Vector{Int}()
    for _=1:N
        T, X = [parse(Int, x) for x in split(readline())]
        if T == 0
            push!(t0, X)
        elseif T == 1
            push!(t1, X)
        else
            push!(t2, X)
        end
    end
    sort!(t0, rev=true)
    sort!(t1, rev=true)
    sort!(t2, rev=true)

    c0 = cumsum(t0)
    c1 = cumsum(t1)
    c2 = cumsum(t2)
    n0 = length(t0)
    n1 = length(t1)
    n2 = length(t2)

    ans = if n0 ≥ M
        c0[M]
    elseif n0 > 0
        c0[end]
    else
        0
    end

    i1 = 0
    i2 = 0
    for s=1:min(M, n1+n2)
        while i1 + i2 < s
            (ni1, ni2) = (i1, i2)
            if i2 ≠ 0  && c2[i2] > i1
                ni1 = min(i1+1, n1)
            else
                ni2 = min(i2+1, n2)
            end
            if (ni1, ni2) == (i1, i2)
                break
            else
                (i1, i2) = (ni1, ni2)
            end
        end

        t = 0
        t += 1 ≤ M-s ≤ n0 ? c0[M-s] : 0
        t += 1 ≤ i1 ≤ n1 ? c1[i1] : 0
        ans = max(ans, t)
    end
    ans
end

println(solve())
