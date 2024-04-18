function solve()
    x, y, z = [parse(Int, v) for v in split(readline())]
    if 0 < y && y < x
        if z < y
            abs(z) + abs(z-x)
        else
            -1
        end
    elseif 0 > y && y > x
        if z > y
            abs(z) + abs(z-x)
        else
            -1
        end
    else
        abs(x)
    end
end

println(solve())
