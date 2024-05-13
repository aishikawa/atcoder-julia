function solve()
    x, k = [parse(Int, x) for x in split(readline())]

    for i in 1:k
        x = round(x, RoundNearestTiesUp, digits=-i)
    end

    convert(Int, x)
end

println(solve())
