function solve()
    n, x, t = [parse(Int, x) for x in split(readline())]
    t * ((n ÷ x) + (n % x > 0 ? 1 : 0))
end

println(solve())
