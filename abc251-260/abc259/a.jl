function solve()
    n, m, x, t, d = [parse(Int, x) for x in split(readline())]
    z = t - x*d
    z + d*min(x, m)
end

println(solve())
