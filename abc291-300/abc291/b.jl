using Statistics

function solve()
    N = parse(Int, readline())
    X = [parse(Int, x) for x in split(readline())]
    sort!(X)
    mean(X[N+1:4N])
end

println(solve())
