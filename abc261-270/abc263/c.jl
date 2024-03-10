using Combinatorics

function solve()
    n, m = [parse(Int, x) for x in split(readline())]

    for c in combinations(1:m, n)
        println(join(c, " "))
    end
end

solve()
