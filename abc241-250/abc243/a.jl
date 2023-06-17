function solve()
    v, a, b, c = [parse(Int, x) for x in split(readline())]
    v = v % (a+b+c)
    if v < a
        "F"
    elseif v < a+b
        "M"
    else
        "T"
    end
end

println(solve())
