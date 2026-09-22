function solve()
    N, M = parse.(Int, split(readline()))
    A = parse.(Int, split(readline()))
    X = Matrix{Int}(undef, (N, M))
    for i=1:N
        X[i, :] = parse.(Int, split(readline()))
    end
    s = vec(sum(X, dims=1))
    all(s .≥ A) ? "Yes" : "No"
end

println(solve())
