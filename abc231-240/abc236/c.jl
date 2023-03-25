function solve()
    n, m = [parse(Int, x) for x in split(readline())]
    ss = split(readline())
    ts = split(readline())

    tindex = 1
    for s in ss
        if s == ts[tindex]
            println("Yes")
            tindex += 1
        else
            println("No")
        end
    end
end

solve()
