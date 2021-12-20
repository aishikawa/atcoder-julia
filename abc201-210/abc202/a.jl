function solve()
    a, b, c = [parse(Int, x) for x in split(readline())]
    21 - (a+b+c)
end

println(solve())
