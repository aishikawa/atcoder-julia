function solve()
    a, b = [parse(Int, x) for x in split(readline())]
    a | b
end

println(solve())
