function solve()
    y = parse(Int, readline())
    r = y % 4
    if r == 0
        y + 2
    elseif r == 1
        y + 1
    elseif r == 2
        y
    else
        y + 3
    end
end

println(solve())
