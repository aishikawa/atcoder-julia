using DataStructures

function solve()
    N, M = [parse(Int, x) for x in split(readline())]
    indegrees = zeros(Int, N)
    graph = [Set{Int}() for _=1:N]
    for _=1:M
        X, Y = [parse(Int, x) for x in split(readline())]
        if Y ∉ graph[X]
            push!(graph[X], Y)
            indegrees[Y] += 1
        end
    end

    pq = PriorityQueue{Int, Int}(enumerate(indegrees))

    indexes = zeros(Int, N)
    for i=1:N
        (k, v) = dequeue_pair!(pq)
        if v ≠ 0
            println("No")
            return
        end
        if i ≠ N
            (_, nv) = peek(pq)
            if nv == 0
                println("No")
                return
            end
        end
        indexes[i] = k
        for v ∈ graph[k]
            pq[v] = pq[v] - 1
        end
    end

    println("Yes")
    ans = zeros(Int, N)
    for (i, j) in enumerate(indexes)
        ans[j] = i
    end
    println(join(ans, " "))
end

solve()
