function solve()
    S = readline()
    T = readline()

    for i=1:length(S)
        if S[i] ≠ T[i]
            return i
        end
    end
    return length(T)
end

println(solve())
