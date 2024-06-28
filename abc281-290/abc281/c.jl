function solve()
    N, T = [parse(Int, x) for x in split(readline())]
    As = [parse(Int, x) for x in split(readline())]

    s = sum(As)
    r = T % s

    i = 1
    while As[i] < r
        r -= As[i]
        i += 1
    end

    println("$i $r")
end

solve()
