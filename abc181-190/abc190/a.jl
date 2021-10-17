function solve()
    a, b, c = [parse(Int, x) for x in split(readline())]
    if c == 0
        if a > b
            "Takahashi"
        else
            "Aoki"
        end
    else
        if a ≥ b
            "Takahashi"
        else
            "Aoki"
        end
    end
end

println(solve())
