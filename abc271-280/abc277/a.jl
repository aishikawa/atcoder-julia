function solve()
    n, x = [parse(Int, i) for i in split(readline())]
    ps = [parse(Int, i) for i in split(readline())]

    findfirst(i -> i==x, ps)
end

println(solve())
