function solve()
    x, y, n = [parse(Int, x) for x in split(readline())]
    min(n * x, (n ÷ 3)*y + (n % 3)*x)
end

println(solve())
