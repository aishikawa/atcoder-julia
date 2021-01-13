function solve()
    n = parse(Int, readline())
    as = [parse(Int, x) for x in split(readline())]

    ret = 0
    h = as[1]
    for i=2:n
        ret += max(0, h - as[i])
        h = max(h, as[i])
    end
    ret
end

println(solve())
