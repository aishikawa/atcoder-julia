function solve()
    m, h = [parse(Int, x) for x in split(readline())]
    h % m == 0 ? "Yes" : "No"
end

println(solve())
