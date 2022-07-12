function solve()
    a, b = [parse(Int, x) for x in split(readline())]
    if b == 0
        "Gold"
    elseif a == 0
        "Silver"
    else
        "Alloy"
    end
end

println(solve())
