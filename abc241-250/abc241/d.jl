function solve()
    q = parse(Int, readline())

    as = Vector{Int}()

    for _=1:q
        query = [parse(Int, x) for x in split(readline())]
        x = query[2]
        if query[1] == 1
            i = searchsortedfirst(as, x)
            insert!(as, i, x)
        elseif query[1] == 2
            k = query[3]
            i = searchsortedlast(as, x)
            if i-k+1 ≥ 1
                println(as[i-k+1])
            else
                println(-1)
            end
        else
            k = query[3]
            i = searchsortedfirst(as, x)
            if i+k-1 ≤ length(as)
                println(as[i+k-1])
            else
                println(-1)
            end
        end
    end
end

solve()
