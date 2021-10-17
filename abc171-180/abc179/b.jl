function solve()
    n = parse(Int, readline())
    zoro = 0
    for i=1:n
        d1, d2 = split(readline())
        if d1 == d2
            zoro += 1
        else
            zoro = 0
        end
        if zoro ≥ 3
            return "Yes"
        end
    end
    "No"
end

println(solve())
