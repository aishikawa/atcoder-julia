function solve()
    n = parse(Int, readline())
    a = [parse(Int, x) for x in split(readline())]

    M = 1000000007
    ret = 0
    s = a[1]
    for i=2:n
        ret += (a[i] * s) % M
        ret %= M
        s += a[i]
        s %= M
    end
    ret
end

println(solve())
