function solve()
    S = [parse(Int, x) for x in split(readline())]
    if !all([100 ≤ s ≤ 675 && s % 25 == 0 for s in S])
        return "No"
    end
    for i=2:8
        if S[i-1] > S[i]
            return "No"
        end
    end
    "Yes"
end

println(solve())
