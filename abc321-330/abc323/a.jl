function solve()
    S = collect(readline())
    for i=2:2:16
        if S[i] == '1'
            return "No"
        end
    end
    "Yes"
end

println(solve())
