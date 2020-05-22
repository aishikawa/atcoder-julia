function makelunlun(t)
    ret = []
    for x in t
        d = x % 10
        if d != 0
            push!(ret, 10x+d-1)
        end
        push!(ret, 10x+d)
        if d != 9
            push!(ret, 10x+d+1)
        end
    end
    ret
end

function solve(k)
    t = [1, 2, 3, 4, 5, 6, 7, 8, 9]
    lunlun = copy(t)
    while length(lunlun) < k
        t = makelunlun(t)
        append!(lunlun, t)
    end
    sort!(lunlun)
    lunlun[k]
end

k = parse(Int, readline())
println(solve(k))
