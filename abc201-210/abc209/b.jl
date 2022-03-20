function solve()
    n, x = [parse(Int, x) for x in split(readline())]
    as = [parse(Int, x) for x in split(readline())]
    sum(as) - n÷2 ≤ x ? "Yes" : "No"
end

println(solve())
