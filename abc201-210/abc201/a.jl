function isarithmetic(a, b, c)
    a - b == b - c
end

function solve()
    a1, a2, a3 = [parse(Int, x) for x in split(readline())]
    if isarithmetic(a1, a2, a3) || isarithmetic(a1, a3, a2) || isarithmetic(a2, a1, a3)
        "Yes"
    else
        "No"
    end
end

println(solve())
