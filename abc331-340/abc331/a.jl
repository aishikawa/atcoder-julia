function solve()
    M, D = [parse(Int, x) for x in split(readline())]
    y, m, d = [parse(Int, x) for x in split(readline())]

    d += 1
    if d > D
        d = 1
        m += 1
        if m > M
            m = 1
            y += 1
        end
    end

    println("$y $m $d")
end

solve()
