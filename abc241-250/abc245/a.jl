function solve()
    a, b, c, d = [parse(Int, x) for x in split(readline())]

    if (a, b) ≤ (c, d)
        "Takahashi"
    else
        "Aoki"
    end
end

println(solve())
