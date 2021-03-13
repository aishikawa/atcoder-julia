function solve()
    n = parse(Int, readline())
    if n % 2 == 0
        "White"
    else
        "Black"
    end
end

println(solve())
