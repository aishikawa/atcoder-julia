function solve()
    a, b, c = [parse(Int, x) for x in split(readline())]
    if a ≤ b ≤ c || c ≤ b ≤ a
        "Yes"
    else
        "No"
    end
end

println(solve())
