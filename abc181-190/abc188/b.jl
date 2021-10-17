function solve()
    n = parse(Int, readline())
    a = [parse(Int, x) for x in split(readline())]
    b = [parse(Int, x) for x in split(readline())]

    a'b == 0 ? "Yes" : "No"
end

println(solve())
