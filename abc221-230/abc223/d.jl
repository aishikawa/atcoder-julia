using DataStructures

function solve()
    n, m = [parse(Int, x) for x in split(readline())]
    postconditions = [Set{Int}() for _=1:n]
    preconditions = [Set{Int}() for _=1:n]
    for i=1:m
        a, b = [parse(Int, x) for x in split(readline())]
        push!(postconditions[a], b)
        push!(preconditions[b], a)
    end

    pq = PriorityQueue{Int, Int}()
    for i=1:n
        if isempty(preconditions[i])
            enqueue!(pq, i, i)
        end
    end

    ans = []
    for _=1:n
        if isempty(pq)
            return -1
        end
        a = dequeue!(pq)
        push!(ans, a)
        for b in postconditions[a]
            pop!(preconditions[b], a)
            if isempty(preconditions[b])
                enqueue!(pq, b, b)
            end
        end
    end
    join(ans, " ")
end

println(solve())
