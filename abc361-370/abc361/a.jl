function solve()
    N, K, X = parse.(Int, split(readline()))
    A = parse.(Int, split(readline()))

    B = vcat(A[1:K], X, A[K+1:end])

    join(B, " ")
end

println(solve())
