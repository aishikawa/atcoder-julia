function solve()
    a, b = [parse(Int, x) for x in split(readline())]
    if a + b ≥ 15 && b ≥ 8
        1
    elseif a + b ≥ 10 && b ≥ 3
        2
    elseif a + b ≥ 3
        3
    else
        4
    end
end

println(solve())
