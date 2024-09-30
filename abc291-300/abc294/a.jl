function solve()
    N = parse(Int, readline())
    A = [parse(Int, x) for x in split(readline())]
    join([a for a in A if iseven(a)], " ")
end

println(solve())
