function solve()
    a, b, c = [parse(Int, x) for x in split(readline())]

    a^2 + b^2 < c^2 ? "Yes" : "No"
end

println(solve())
