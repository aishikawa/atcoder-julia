function solve()
    n = parse(Int, readline())
    as = [parse(Int, x) for x in split(readline())]

    ret = 0
    m = 0
    for x=2:1000
        s = sum([a%x==0 for a in as])
        if s > m
            m = s
            ret = x
        end
    end
    ret
end

println(solve())
