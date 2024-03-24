using LinearAlgebra

function solve()
    a = [parse(Int, x) for x in split(readline())]
    push!(a, 0)
    b = [parse(Int, x) for x in split(readline())]
    push!(b, 0)
    c = [parse(Int, x) for x in split(readline())]
    push!(c, 0)
    d = [parse(Int, x) for x in split(readline())]
    push!(d, 0)

    ab = b - a
    bc = c - b
    cd = d - c
    da = a - d

    cross(ab, bc)[3] > 0 && cross(bc, cd)[3] > 0 && cross(cd, da)[3] > 0 && cross(da, ab)[3] > 0 ? "Yes" : "No"
end

println(solve())
