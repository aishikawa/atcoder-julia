function solve()
    a = [parse(Int, x) for x in split(readline())]
    sort!(a)
    a[2] + a[3]
end

println(solve())
