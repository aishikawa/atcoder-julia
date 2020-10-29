function solve()
    xs = [parse(Int, x) for x in split(readline())]
    15 - sum(xs)
end

println(solve())
