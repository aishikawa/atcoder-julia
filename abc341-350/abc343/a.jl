function solve()
    A, B = [parse(Int, x) for x in split(readline())]
    (A + B + 1) % 10
end

println(solve())
