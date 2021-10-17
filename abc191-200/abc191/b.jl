function solve()
    n, x = [parse(Int, x) for x in split(readline())]
    as = [parse(Int, x) for x in split(readline())]

    join([a for a in as if a != x], " ")
end

println(solve())
