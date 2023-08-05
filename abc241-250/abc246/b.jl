using LinearAlgebra

function solve()
    coord = [parse(Int, x) for x in split(readline())]
    n = normalize(coord)
    "$(n[1]) $(n[2])"
end

println(solve())
