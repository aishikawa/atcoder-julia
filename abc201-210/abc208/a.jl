function solve()
    a, b = [parse(Int, x) for x in split(readline())]
    if a ≤ b ≤ 6a
        "Yes"
    else
        "No"
    end
end

println(solve())
