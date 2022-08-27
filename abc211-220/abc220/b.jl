function solve()
    k = parse(Int, readline())
    a, b = [parse(Int, x, base=k) for x in split(readline())]
    a*b
end

println(solve())
