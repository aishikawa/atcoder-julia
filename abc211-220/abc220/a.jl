function solve()
    a, b, c = [parse(Int, x) for x in split(readline())]
    for x=a:b
        if x % c == 0
            return x
        end
    end
    return -1
end

println(solve())
