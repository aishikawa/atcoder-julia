function solve()
    n = parse(Int, readline())
    as = [parse(Int, x) for x in split(readline())]
    p2 = zeros(Int, n)
    p3 = zeros(Int, n)
    rest = copy(as)

    for i=1:n
        while rest[i] % 2 == 0
            p2[i] += 1
            rest[i] = rest[i] ÷ 2
        end
        while rest[i] % 3 == 0
            p3[i] += 1
            rest[i] = rest[i] ÷ 3
        end
    end

    if length(Set(rest)) ≠ 1
        -1
    else
        mp2 = minimum(p2)
        mp3 = minimum(p3)
        sum([p - mp2 for p in p2]) + sum([p - mp3 for p in p3])
    end
end

println(solve())
