function solve()
    B, G = [parse(Int, x) for x in split(readline())]
    B > G ? "Bat" : "Glove"
end

println(solve())
