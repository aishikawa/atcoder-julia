function solve()
    x = parse(Int, readline())
    if x < 40
        40 - x
    elseif x < 70
        70 - x
    elseif x < 90
        90 - x
    else
        "expert"
    end
end

println(solve())
