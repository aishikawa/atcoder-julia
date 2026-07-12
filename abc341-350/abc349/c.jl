function solve()
    S = readline() |> uppercase |> collect
    T = readline() |> collect
    si = 0
    for ti=1:3
        if ti==3 && T[ti]=='X'
            return "Yes"
        end
        i = findfirst(c -> c == T[ti], S[si+1:end])
        if i === nothing
            return "No"
        end
        si += i
    end
    "Yes"
end

println(solve())
