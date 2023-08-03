function solve()
    xs = Set()
    ys = Set()
    for _=1:3
        x, y = [parse(Int, s) for s in split(readline())]
        if x in xs
            delete!(xs, x)
        else
            push!(xs, x)
        end
        if y in ys
            delete!(ys, y)
        else
            push!(ys, y)
        end
    end
    println("$(pop!(xs)) $(pop!(ys))")
end

solve()
