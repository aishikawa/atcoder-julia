function solve()
    n, k = [parse(Int, x) for x in split(readline())]
    triked = ones(Bool, n)
    for _ in 1:k
        d = parse(Int, readline())
        a = [parse(Int, x) for x in split(readline())]
        for aa in a
            triked[aa] = false
        end
    end
    sum(triked)
end

println(solve())
