function solve()
    a, b = [parse(Int, x) for x in split(readline())]
    b * a / 100
end

println(solve())
