function solve()
    n = parse(Int, readline())
    as = [parse(Int, x) for x in split(readline())]
    i = 1
    while i < n && as[i] < as[i+1]
        i += 1
    end
    as[i]
end

println(solve())
