function solve()
    n, w = [parse(Int, x) for x in split(readline())]
    n÷w
end

println(solve())
