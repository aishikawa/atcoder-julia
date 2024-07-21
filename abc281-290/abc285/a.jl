function solve()
    a, b = [parse(Int, x) for x in split(readline())]
    b ÷ 2 == a ? "Yes" : "No"
end

println(solve())
