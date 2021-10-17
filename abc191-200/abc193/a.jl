function solve()
    a, b = [parse(Int, x) for x in split(readline())]
    (1 - b / a) * 100
end

println(solve())
