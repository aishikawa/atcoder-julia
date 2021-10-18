function solve2(items, boxes)
    ret = 0
    for (w, v) in items
        bb = 10e6+1
        vv = -1
        ii = -1
        for (i, b) in enumerate(boxes)
            if b ≥ w && b ≤ bb
                bb = b
                vv = v
                ii = i
            end
        end
        if vv > 0
            ret += vv
            deleteat!(boxes, ii)
        end
    end
    ret
end

function solve()
    n, m, q = [parse(Int, x) for x in split(readline())]
    items = Array{Tuple{Int, Int}}([])
    for _ in 1:n
        item = Tuple(parse(Int, x) for x in split(readline()))
        push!(items, item)
    end
    sort!(items, by=x->(x[2], x[1]), rev=true)
    boxes = [parse(Int, x) for x in split(readline())]

    for _ in 1:q
        l, r = [parse(Int, x) for x in split(readline())]
        bs = append!(boxes[1:l-1], boxes[r+1:end])
        ret = solve2(items, bs)
        println(ret)
    end
end

solve()
