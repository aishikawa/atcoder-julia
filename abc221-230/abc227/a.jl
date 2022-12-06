function solve()
    n, k, a = [parse(Int, x) for x in split(readline())]
    (k + a - 2) % n + 1
end

println(solve())
