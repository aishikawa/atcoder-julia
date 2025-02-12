function solve()
    A, B = [parse(Int, x) for x in split(readline())]
    A ∈ [1, 2, 4, 5, 7, 8] && B-A == 1 ? "Yes" : "No"
end

println(solve())
