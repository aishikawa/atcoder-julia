function solve()
    x, y = [s for s in split(readline(), ".")]
    y = parse(Int, y)
    if y ≤ 2
        x * "-"
    elseif y ≤ 6
        x
    else
        x * "+"
    end
end

println(solve())
