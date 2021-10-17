function solve()
    s = 0
    n = readline()
    for c in n
        s += parse(Int, c)
    end
    s % 9 == 0 ? "Yes" : "No"
end

println(solve())
