using LinearAlgebra

function solve()
    n, k = [parse(Int, x) for x in split(readline())]
    light = [parse(Int, x) for x in split(readline())]
    pos = Vector{Vector{Int}}()
    for i=1:n
        pos = push!(pos, [parse(Int, x) for x in split(readline())])
    end

    ret = 0
    for i=1:n
        far = 1e6
        for j in light
            far = min(far, norm(pos[i]-pos[j], 2))
        end
        ret = max(ret, far)
    end
    ret
end

println(solve())
