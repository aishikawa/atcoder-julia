using DataStructures

function solve()
    n = parse(Int, readline())
    ts = zeros(Int, n)
    as = Dict{Int, Vector{Int}}()
    for i=1:n
        l = [parse(Int, x) for x in split(readline())]
        ts[i] = l[1]
        as[i] = l[3:end]
    end

    ret = ts[n]
    pq = PriorityQueue{Int, Int}()
    for a in as[n]
        enqueue!(pq, a, -a)
    end
    while length(pq) > 0
        k = dequeue!(pq)
        ret += ts[k]
        for a in as[k]
            if a ∉ keys(pq)
                enqueue!(pq, a, -a)
            end
        end
    end
    ret
end

println(solve())
