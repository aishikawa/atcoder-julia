function solve()
    X, Y, Z = [parse(Int, x) for x in split(readline())]
    S = collect(readline())

    off = 0
    on = 10^15
    for s ∈ S
        if s == 'a'
            noff = min(off + X, on + Z + X)
            non = min(on + Y, off + Z + Y)
        else
            noff = min(off + Y, on + Z + Y)
            non = min(on + X, off + Z + X)
        end
        off, on = noff, non
    end
    min(on, off)
end

println(solve())
