function solve()
    N, A, B = [parse(Int, x) for x in split(readline())]
    C = [parse(Int, x) for x in split(readline())]
    findfirst(x -> x == A+B, C)
end

println(solve())
