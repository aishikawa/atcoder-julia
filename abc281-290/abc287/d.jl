function solve()
    S = collect(readline())
    T = collect(readline())
    lent = length(T)
    l = lent + 1
    for i=1:lent
        if S[i] ≠ '?' && T[i] ≠ '?' && S[i] ≠ T[i]
            l = i
            break
        end
    end
    r = 0
    for i=lent:-1:1
        if S[end-lent+i] ≠ '?' && T[i] ≠ '?' && S[end-lent+i] ≠ T[i]
            r = i
            break
        end
    end

    for x=0:lent
        if x < l && x ≥ r
            println("Yes")
        else
            println("No")
        end
    end
end

solve()
