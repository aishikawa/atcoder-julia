function solve()
    n = parse(Int, readline())
    ps = [parse(Int, x) for x in split(readline())]

    num_huppy = zeros(Int, n)

    for (i, p) in enumerate(ps)
        num_huppy[mod((p-i-1), n) + 1] += 1
        num_huppy[mod((p-i), n) + 1] += 1
        num_huppy[mod((p-i+1), n) + 1] += 1
    end

    maximum(num_huppy)
end

println(solve())
