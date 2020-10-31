function solve()
    x, y = [parse(Int, x) for x in split(readline())]
    y % 2 == 0 && 2x ≤ y ≤ 4x ? "Yes" : "No"
end

println(solve())
