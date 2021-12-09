function solve()
    n = parse(Int, readline())
    as = [parse(Int, x) for x in split(readline())]

    array = zeros(Int, 200)

    for a in as
        array[a % 200 + 1] += 1
    end

    ret = 0
    for x in array
        ret += x * (x-1) ÷ 2
    end
    ret
end

println(solve())
