function solve()
    n = parse(Int, readline())
    as = [parse(Int, x) for x in split(readline())]

    f1 = maximum(as[1:2^(n-1)])
    f2 = maximum(as[2^(n-1)+1:end])
    r = min(f1, f2)
    findfirst(x -> x==r, as)
end

println(solve())
