function solve()
    a, b = [parse(Int, x) for x in split(readline())]
    if b - a == 1 || b - a == 9
        "Yes"
    else
        "No"
    end
end

println(solve())
