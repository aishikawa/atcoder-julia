function solve()
    N, X, Y, Z = [parse(Int, x) for x in split(readline())]
    if X < Z < Y || Y < Z < X
        "Yes"
    else
        "No"
    end
end

println(solve())
