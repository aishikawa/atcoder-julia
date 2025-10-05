function solve()
    N, L = [parse(Int, x) for x in split(readline())]
    A = [parse(Int, x) for x in split(readline())]

    count(x->x≥L, A)
end

println(solve())
