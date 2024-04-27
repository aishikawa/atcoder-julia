function solve()
    n, q = [parse(Int, x) for x in split(readline())]
    as = Vector{Vector{Int}}(undef, n)
    for i=1:n
        as[i] = [parse(Int, x) for x in split(readline())][2:end]
    end

    for _=1:q
        s, t = [parse(Int, x) for x in split(readline())]
        println(as[s][t])
    end
end

solve()
