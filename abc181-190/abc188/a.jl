function solve()
    a, b = [parse(Int, x) for x in split(readline())]
    abs(a - b) < 3 ? "Yes" : "No"
end

println(solve())
