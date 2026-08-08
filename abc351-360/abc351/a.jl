function solve()
    A = [parse(Int, x) for x in split(readline())]
    B = [parse(Int, x) for x in split(readline())]

    sum(A) - sum(B) + 1
end

println(solve())
