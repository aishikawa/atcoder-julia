function solve()
    S = readline()
    if length(S) ≠ 8
        return "No"
    end
    if !isletter(S[1])
        return "No"
    end
    if !all([isnumeric(c) for c in S[2:7]]) || S[2] == '0'
        return "No"
    end
    if !isletter(S[8])
        return "No"
    end

    "Yes"
end

println(solve())
