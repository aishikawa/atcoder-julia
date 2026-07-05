function solve()
    N = parse(Int, readline())
    A = [parse(Int, x) for x in split(readline())]
    -sum(A)
end

println(solve())
