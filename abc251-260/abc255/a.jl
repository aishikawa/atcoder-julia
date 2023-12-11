function solve()
    r, c = [parse(Int, x) for x in split(readline())]
    as = zeros(Int, 2, 2)
    as[1, :] = [parse(Int, x) for x in split(readline())]
    as[2, :] = [parse(Int, x) for x in split(readline())]

    as[r, c]
end

println(solve())
