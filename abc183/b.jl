function solve()
    sx, sy, gx, gy = [parse(Int, x) for x in split(readline())]
    sx - sy*(sx-gx)/(sy+gy)
end

println(solve())
