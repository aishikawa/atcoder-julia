using Combinatorics

function solve()
    s = readline()
    d = Dict()
    for c in s
        d[c] = get(d, c, 0) + 1
    end

    i = 0
    for (_, v) in d
        i += binomial(v, 2)
    end

    t = binomial(length(s), 2)

    i ≥ 2 ? t-i+1 : t
end

println(solve())
