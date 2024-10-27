using DataStructures

function solve()
    N, K = [parse(Int, x) for x in split(readline())]
    A = [parse(Int, x) for x in split(readline())]
    pq = PriorityQueue{Int, Int}()
    for a in A
        pq[a] = a
    end

    for _=1:K-1
        v = dequeue!(pq)
        for a in A
            pq[v+a] = v+a
        end
    end

    dequeue!(pq)
end

println(solve())
