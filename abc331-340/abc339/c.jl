function solve()
    N = parse(Int, readline())
    A = [parse(Int, x) for x in split(readline())]
    c = cumsum(A)
    m = minimum(c)
    m < 0 ? -m + c[end] : c[end]
end

println(solve())
