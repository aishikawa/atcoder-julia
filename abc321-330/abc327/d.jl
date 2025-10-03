function solve()
    N, M = [parse(Int, x) for x in split(readline())]
    A = [parse(Int, x) for x in split(readline())]
    B = [parse(Int, x) for x in split(readline())]

    graph = [Set{Int}() for i=1:N]
    
    for i=1:M
        push!(graph[A[i]], B[i])
        push!(graph[B[i]], A[i])
    end

    X = fill(-1, N)
    unsearched = Set{Int}(1:N)
    while !isempty(unsearched)
        s = pop!(unsearched)
        st = [s]
        X[s] = 0

        while !isempty(st)
            v = pop!(st)
            delete!(unsearched, v)

            for w ∈ graph[v]
                if X[w] == X[v]
                    return "No"
                end
                if w ∈ unsearched
                    X[w] = 1-X[v]
                    delete!(unsearched, w)
                    push!(st, w)
                end
            end
        end
    end
    "Yes"
end

println(solve())
