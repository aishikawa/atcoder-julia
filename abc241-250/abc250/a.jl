function solve()
    h, w = [parse(Int, x) for x in split(readline())]
    r, c = [parse(Int, x) for x in split(readline())]

    ret = 4
    if r == 1
        ret -= 1
    end
    if r == h
        ret -= 1
    end
    if c == 1
        ret -= 1
    end
    if c == w
        ret -= 1
    end
    ret
end

println(solve())
