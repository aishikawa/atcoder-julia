using DataStructures

function solve()
    q = parse(Int, readline())
    acc = Accumulator{Int, Int}()
    heap = BinaryMinMaxHeap{Int}()
    for _=1:q
        query = [parse(Int, x) for x in split(readline())]
        if query[1] == 1
            x = query[2]
            inc!(acc, x)
            push!(heap, x)
        elseif query[1] == 2
            x = query[2]
            if query[3] ≥ acc[x]
                reset!(acc, x)
            else
                dec!(acc, query[2], query[3])
            end
        elseif query[1] == 3
            minv = minimum(heap)
            while acc[minv] == 0
                popmin!(heap)
                minv = minimum(heap)
            end
            maxv = maximum(heap)
            while acc[maxv] == 0
                popmax!(heap)
                maxv = maximum(heap)
            end
            println(maxv - minv)
        end
    end
end

solve()
