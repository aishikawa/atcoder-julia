function solve()
    n = parse(Int, readline())
    as = [parse(Int, x) for x in split(readline())]
    bs = [parse(Int, x) for x in split(readline())]

    bset = Set(bs)

    ret1 = ret2 = 0
    for i=1:n
        if as[i] ∈ bset
            if as[i] == bs[i]
                ret1 += 1
            else
                ret2 += 1
            end
        end
    end
    println(ret1)
    println(ret2)
end

solve()
