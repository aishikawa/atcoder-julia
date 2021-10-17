function solve()
    d, t, s = [parse(Int, x) for x in split(readline())]
    s*t >= d ? "Yes" : "No"
end

println(solve())
