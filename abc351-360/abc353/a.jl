function solve()
    N = parse(Int, readline())
    H = [parse(Int, x) for x in split(readline())]

    for i=2:N
        if H[i] > H[1]
            return i
        end
    end
    -1
end

println(solve())
