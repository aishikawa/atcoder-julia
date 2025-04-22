function solve()
    M = parse(Int, readline())
    D = [parse(Int, x) for x in split(readline())]

    t = (sum(D) + 1) ÷ 2

    i = 1
    while t > D[i]
        t -= D[i]
        i += 1
    end

    println("$i $t")
end

solve()
