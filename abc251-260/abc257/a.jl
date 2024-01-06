function solve()
    n, x = [parse(Int, x) for x in split(readline())]
    t = (x - 1) ÷ n
    'A' + t
end

println(solve())
