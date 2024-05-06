function solve()
    n = parse(Int, readline())
    as = [parse(Int, a) for a in split(readline())]
    sum(as)
end

println(solve())
