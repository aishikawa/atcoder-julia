function solve()
    a, b = [parse(Int, x) for x in split(readline())]
    (a - b) / 3 + b
end

println(solve())
