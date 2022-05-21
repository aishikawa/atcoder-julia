function solve()
    n = parse(Int, readline())
    if n ≤ 125
        4
    elseif n ≤ 211
        6
    else
        8
    end
end

println(solve())
