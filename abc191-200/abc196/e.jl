function solve()
    n = parse(Int, readline())
    plus = 0
    low = -10^9
    high = 10^9
    for _ in 1:n
        a, t = [parse(Int, x) for x in split(readline())]
        if t == 1
            plus += a
            low += a
            high += a
        elseif t == 2
            low = max(low, a)
            high = max(high, a)
        elseif t == 3
            low = min(low, a)
            high = min(high, a)
        end
    end

    q = parse(Int, readline())
    xs = [parse(Int, x) for x in split(readline())]
    for x in xs
        y = min(high, max(low, x+plus))
        println(y)
    end
end

solve()
