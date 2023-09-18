function solve()
    a, b, k = [parse(Int, x) for x in split(readline())]
    r = 0
    x = a
    while x < b
        r += 1
        x *= k
    end
    r
end

println(solve())
