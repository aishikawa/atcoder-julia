function solve()
    n = parse(Int, readline())
    as = [parse(Int, x) for x in split(readline())]
    bs = [parse(Int, x) for x in split(readline())]

    diff = minimum(bs) - maximum(as)
    diff < 0 ? 0 : diff + 1
end

println(solve())
