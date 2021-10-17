function solve()
    as = [parse(Int, x) for x in split(readline())]
    minimum(as)
end

println(solve())
