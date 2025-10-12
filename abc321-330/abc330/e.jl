using DataStructures

function solve()
    N, Q = [parse(Int, x) for x in split(readline())]
    A = [parse(Int, x) for x in split(readline())]

    num = DefaultDict{Int, Int, Int}(0)
    for a in A
        num[a] += 1
    end

    pq = PriorityQueue{Int, Int}()
    for x=0:N
        if x ∉ keys(num)
            pq[x] = x
        end
    end

    for _=1:Q
        i, x = [parse(Int, x) for x in split(readline())]
        old = A[i]
        num[old] -= 1
        
        if old ≤ N && num[old] == 0
            pq[old] = old
        end
        A[i] = x
        num[x] += 1
        if x ≤ N && num[x] == 1
            delete!(pq, x)
        end

        k, v = peek(pq)
        println(k)
    end
end

solve()
