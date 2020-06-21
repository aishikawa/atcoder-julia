function readintegers()
    [parse(Int, x) for x in split(readline())]
end

function solve()
    n, m = readintegers()
    a = readintegers()
    n - sum(a) < 0 ? -1 : n - sum(a)
end

println(solve())
