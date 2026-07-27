function solve()
    N, Q = [parse(Int, x) for x in split(readline())]
    T = [parse(Int, x) for x in split(readline())]

    teeth = ones(Bool, N)
    for t in T
        teeth[t] = !teeth[t]
    end

    sum(teeth)
end

println(solve())
