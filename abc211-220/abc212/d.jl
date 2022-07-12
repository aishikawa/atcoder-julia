using DataStructures

function solve()
    q = parse(Int, readline())
    heap = BinaryMinHeap{Int}()
    d = 0

    for i=1:q
        l = readline()
        if l[1] == '1'
            x = parse(Int, split(l)[2])
            push!(heap, x - d)
        elseif l[1] == '2'
            x = parse(Int, split(l)[2])
            d += x
        else
            v = pop!(heap)
            println(v[1] + d)
        end
    end
end

solve()
