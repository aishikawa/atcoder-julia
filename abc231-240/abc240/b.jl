function solve()
    n = parse(Int, readline())
    as = [parse(Int, x) for x in split(readline())]
    as = Set(as)
    length(as)
end

println(solve())
