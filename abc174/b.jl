function solve()
    n, d = [parse(Int, x) for x in split(readline())]
    ret = 0
    for _=1:n
        x, y = [parse(Int, x) for x in split(readline())]
        if sqrt(x*x + y*y) ≤ d
            ret += 1
        end
    end
    ret
end

println(solve())
