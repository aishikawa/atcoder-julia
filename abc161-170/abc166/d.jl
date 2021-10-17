function solve()
    x = parse(Int, readline())
    for a=-118:119, b=-118:119
        if a^5 - b^5 == x
            return a, b
        end
    end
end

a, b = solve()
println(a, " ", b)
