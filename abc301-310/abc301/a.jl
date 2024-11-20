function solve()
    N = parse(Int, readline())
    S = collect(readline())
    w = Dict('T'=>0, 'A'=>0)
    for s in S
        w[s] += 1
    end

    if w['T'] > w['A']
        "T"
    elseif w['A'] > w['T']
        "A"
    else
        S[end] == 'T' ? "A" : "T"
    end
end

println(solve())
