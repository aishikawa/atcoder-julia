function solve()
    a, b = [parse(Int, x) for x in split(readline())]
    c, d = [parse(Int, x) for x in split(readline())]

    a*d - b*c
end

println(solve())
