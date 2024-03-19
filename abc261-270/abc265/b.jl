function solve()
    n, m, t = [parse(Int, x) for x in split(readline())]
    as = [parse(Int, x) for x in split(readline())]
    bs = zeros(Int, n)
    for _=1:m
        x, y = [parse(Int, x) for x in split(readline())]
        bs[x] = y
    end

    for i=1:n-1
        t += bs[i]
        t -= as[i]
        if t ≤ 0
            return "No"
        end
    end

    "Yes"
end

println(solve())
