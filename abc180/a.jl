function solve()
    n, a, b = [parse(Int, x) for x in split(readline())]
    n - a + b
end

println(solve())
