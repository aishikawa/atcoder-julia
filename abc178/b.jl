function solve()
    a, b, c, d = [parse(Int, x) for x in split(readline())]
    max(a*c, a*d, b*c, b*d)
end

println(solve())
