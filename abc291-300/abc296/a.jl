function solve()
    N = parse(Int, readline())
    S = collect(readline())

    p = S[1]
    for s in S[2:end]
        if p == s
            return "No"
        end
        p = s
    end
    "Yes"
end

println(solve())
