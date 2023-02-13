function solve()
    x, y = [parse(Int, x) for x in split(readline())]
    x ≥ y ? 0 : (y - x - 1) ÷ 10 + 1
end

println(solve())
