function solve()
    n, x, y, z = [parse(Int, x) for x in split(readline())]
    as = [parse(Int, x) for x in split(readline())]
    bs = [parse(Int, x) for x in split(readline())]

    p = [(i, a, b) for (i, a, b) in zip(1:n, as, bs)]
    sort!(p, by=t->(t[2], -t[1]), rev=true)
    pass = p[1:x]
    p = p[x+1:end]
    sort!(p, by=t->(t[3], -t[1]), rev=true)
    append!(pass, p[1:y])
    p = p[y+1:end]
    sort!(p, by=t->(t[2]+t[3], -t[1]), rev=true)
    append!(pass, p[1:z])

    for (i, _, _) in sort(pass, by=t->t[1])
        println(i)
    end
end

solve()
