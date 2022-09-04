function solve()
    a, b = [parse(Int, x) for x in split(readline())]
    32^(a - b)
end

println(solve())
