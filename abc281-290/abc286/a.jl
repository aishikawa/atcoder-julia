function solve()
    N, P, Q, R, S = [parse(Int, x) for x in split(readline())]
    A = [parse(Int, x) for x in split(readline())]

    ans = vcat(A[1:P-1], A[R:S], A[Q+1:R-1], A[P:Q], A[S+1:N])
    join(ans, " ")
end

println(solve())
