function solve()
    n = parse(Int, readline())
    ret = 10^9 + 1
    for _=1:n
        a, p, x = [parse(Int, x) for x in split(readline())]
        if a < x
            ret = min(ret, p)
        end
    end
    ret == 10^9+1 ? -1 : ret
end

println(solve())
