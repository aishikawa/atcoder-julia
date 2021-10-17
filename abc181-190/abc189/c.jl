function solve()
    n = parse(Int, readline())
    as = [parse(Int, x) for x in split(readline())]

    ret = 0
    for l=1:n
        x = as[l]
        for r=l:n
            x = min(x, as[r])
            ret = max(ret, x*(r-l+1))
        end
    end
    ret
end

println(solve())
