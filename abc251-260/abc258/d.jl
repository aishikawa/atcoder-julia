function solve()
    n, x = [parse(Int, x) for x in split(readline())]
    ret = typemax(Int128)
    s = 0
    for i=1:min(n, x)
        a, b = [parse(Int, x) for x in split(readline())]
        s += a+b
        v = s + (x - i) * b
        ret = min(ret, v)
    end
    ret
end

println(solve())
