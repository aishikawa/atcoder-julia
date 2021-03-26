function solve()
    x, y, a, b = [parse(BigInt, x) for x in split(readline())]
    ret = 0
    while a*x ≤ x+b && a*x<y
        x *= a
        ret += 1
    end
    ret + (y-1-x)÷b
end

println(solve())
