function solve()
    v, t, s, d = [parse(Int, x) for x in split(readline())]
    if t ≤ d / v ≤ s
        "No"
    else
        "Yes"
    end
end

println(solve())
