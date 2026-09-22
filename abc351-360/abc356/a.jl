function solve()
    N, L, R = parse.(Int, split(readline()))
    A = collect(1:N)
    A = [A[1:L-1]; A[R:-1:L]; A[R+1:end]]
    join(A, " ")
end

println(solve())
