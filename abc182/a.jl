function solve()
    a, b = [parse(Int, x) for x in split(readline())]
    2a + 100 - b
end

println(solve())
