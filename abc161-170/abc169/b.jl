function solve()
    readline()
    as = [parse(BigInt, x) for x in split(readline())]
    p = prod(as)
    if p > 10^18
        -1
    else
        p
    end
end

println(solve())
