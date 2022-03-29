function solve()
    n, a, x, y = [parse(Int, x) for x in split(readline())]
    if n ≤ a
        x * n
    else
        x * a + y * (n - a)
    end
end

println(solve())
