function solve()
    r, x, y = [parse(Int, x) for x in split(readline())]
    d = √(x^2 + y^2)
    if d < r
        2
    elseif d == r
        1
    else
        ceil(Int, d/r)
    end
end

println(solve())
