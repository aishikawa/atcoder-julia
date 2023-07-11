function solve()
    n = parse(Int, readline())
    as = [parse(Int, x) for x in split(readline())]

    exist = zeros(Bool, 2001)

    for a in as
        exist[a+1] = true
    end

    for (i, e) in enumerate(exist)
        if e == false
            return i-1
        end
    end
end

println(solve())
