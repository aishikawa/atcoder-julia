function solve()
    n = parse(Int, readline())
    as = [parse(Int, x) for x in split(readline())]

    t = 0
    ret = 0
    for (i, a) in enumerate(as)
        if a == i
            t += 1
        elseif a > i && as[a] == i
            ret += 1
        end
    end
    ret + t*(t-1)÷2
end

println(solve())
