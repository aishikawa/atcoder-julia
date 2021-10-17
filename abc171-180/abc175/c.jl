function solve()
    x, k, d = [parse(Int, x) for x in split(readline())]
    x = abs(x)
    t = x ÷ d
    if t > k
        x - k * d
    else
        k = k - t
        x = x - t * d
        if k % 2 == 0
            x
        else
            d - x
        end
    end
end

println(solve())
