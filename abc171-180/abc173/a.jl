function solve()
    n = parse(Int, readline())
    if n%1000 == 0
        0
    else
        1000 - n % 1000
    end
end

println(solve())
