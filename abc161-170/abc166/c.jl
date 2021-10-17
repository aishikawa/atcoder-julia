function solve()
    n, m = [parse(Int, x) for x in split(readline())]
    h = [parse(Int, x) for x in split(readline())]

    good = ones(Bool, n)
    for _ in 1:m
        a, b = [parse(Int, x) for x in split(readline())]
        if h[a] < h[b]
            good[a] = false
        elseif h[b] < h[a]
            good[b] = false
        else
            good[a] = good[b] = false
        end
    end
    sum(good)
end

println(solve())
