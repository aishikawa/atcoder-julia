function solve()
    a, b = [parse(Int, x) for x in split(readline())]
    max(0, b - a + 1)
end

println(solve())
