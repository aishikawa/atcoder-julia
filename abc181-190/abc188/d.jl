function solve()
    n, C = [parse(Int, x) for x in split(readline())]
    event = []
    for i=1:n
        a, b, c = [parse(Int, x) for x in split(readline())]
        push!(event, (a-1, c))
        push!(event, (b, -c))
    end
    sort!(event)

    ret = 0
    fee = 0
    t = 0
    for (x, y) in event
        if x ≠ t
            ret += min(C, fee) * (x - t)
            t = x
        end
        fee += y
    end
    ret
end

println(solve())
