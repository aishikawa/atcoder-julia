function solve()
    a, b, c, x = [parse(Int, x) for x in split(readline())]
    if x ≤ a
        1.0
    elseif x ≤ b
        c / (b - a)
    else
        0.0
    end
end

println(solve())
