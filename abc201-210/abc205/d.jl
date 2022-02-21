function solve()
    n, q = [parse(Int, x) for x in split(readline())]
    as = [parse(Int, x) for x in split(readline())]

    bs = as - Array(1:n)
    
    for _ in 1:q
        k = parse(Int, readline())
        i = searchsorted(bs, k)
        if i.start ≤ i.stop
            println(as[i.start] - 1)
        else
            if i.stop == 0
                println(k)
            elseif i.start > n
                println(as[end] + (k - bs[end]))
            else
                println(as[i.stop] + (k - bs[i.stop]))
            end
        end
    end
end

solve()