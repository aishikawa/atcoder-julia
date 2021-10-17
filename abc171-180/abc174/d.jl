function solve()
    n = parse(Int, readline())
    cs = readline()

    numr = count("R", cs)
    count("W", cs[1:numr])
end

println(solve())
