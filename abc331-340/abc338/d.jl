function add!(arr::Vector{Int}, from::Int, to::Int, val::Int, N::Int)
    if from ≤ to
        arr[from] += val
        arr[to] -= val
    else
        arr[from] += val
        arr[1] += val
        arr[to] -= val        
    end
end

function distance(from::Int, to::Int, N::Int)
    return from ≤ to ? to - from : to + N - from
end

function solve()
    N, M = [parse(Int, x) for x in split(readline())]
    X = [parse(Int, x) for x in split(readline())]

    W = zeros(Int, N)
    for i = 1:M-1
        add!(W, X[i], X[i+1], distance(X[i+1], X[i], N), N)
        add!(W, X[i+1], X[i], distance(X[i], X[i+1], N), N)
    end
    minimum(cumsum(W))
end

println(solve())
