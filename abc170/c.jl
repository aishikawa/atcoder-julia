function solve()
    x, n = [parse(Int, x) for x in split(readline())]
    p = Set(parse(Int, x) for x in split(readline()))

    d = 0
    while true
        for s in [-1, 1]
            a = x + d*s
            if a ∉ p
                return a
            end
        end
        d += 1
    end

end

println(solve())
