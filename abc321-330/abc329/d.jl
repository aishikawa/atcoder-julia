using DataStructures

function solve()
    N, M = [parse(Int, x) for x in split(readline())]
    A = [parse(Int, x) for x in split(readline())]

    pq = PriorityQueue{Int, Tuple{Int, Int}}()

    for i=1:N
        pq[i] = (0, i)
    end
    
    for i=1:M
        v, _ = pq[A[i]]
        pq[A[i]] = (v-1, A[i])

        w, _ = peek(pq)
        println(w)
    end
end

solve()
