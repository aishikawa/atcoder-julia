function solve()
    n = readline()
    as = [parse(Int, x) for x in split(readline())]

    sum([max(0, a-10) for a in as])
end

println(solve())