function solve()
    X, Y = [parse(Int, x) for x in split(readline())]
    -3 ≤ Y - X ≤ 2 ? "Yes" : "No"
end

println(solve())
