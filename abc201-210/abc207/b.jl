function solve()
    a, b, c, d = [parse(Int, x) for x in split(readline())]
    if c*d - b ≤ 0
        -1
    else
        ceil(Int, a / (c*d - b))
    end
end

println(solve())
