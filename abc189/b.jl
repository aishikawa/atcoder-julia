function solve()
    n, x = [parse(Int, x) for x in split(readline())]
    a = 0
    for i=1:n
        v, p = [parse(Int, x) for x in split(readline())]
        a += v * p
        if a > x * 100
            return i
        end
    end
    return -1
end

println(solve())
