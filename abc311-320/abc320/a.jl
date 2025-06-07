function solve()
    A, B = [parse(Int, x) for x in split(readline())]
    A^B + B^A
end

println(solve())
