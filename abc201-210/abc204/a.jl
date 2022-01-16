function solve()
    xs = [parse(Int, d) for d in split(readline())]
    if xs[1] == xs[2]
        xs[1]
    else
        s = Set([0, 1, 2])
        for x in xs
            delete!(s, x)
        end
        pop!(s)
    end
end

println(solve())
