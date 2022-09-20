function solve()
    n = readline()
    while length(n) < 4
        n = "0"*n
    end
    n
end

println(solve())
