function solve()
    s, w = [parse(Int, x) for x in split(readline())]
    if w  ≥ s
        "unsafe"
    else
        "safe"
    end
end

println(solve())
