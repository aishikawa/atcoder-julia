function solve()
    n = parse(Int, readline())
    as = [parse(Int, x) for x in split(readline())]
    base = [0, 0, 0, 0]

    p = 0

    for a in as
        base[1] = 1
        for _=1:a
            if base[4] == 1
                p += 1
            end
            base[2:end] = base[1:3]
            base[1] = 0
        end
    end

    p
end

println(solve())
