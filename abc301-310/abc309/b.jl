function solve()
    N = parse(Int, readline())
    A = zeros(Int, N, N)
    for i=1:N
        A[i, :] = [parse(Int, x) for x in readline()]
    end
    B = copy(A)
    for i=2:N
        B[1, i] = A[1, i-1]
        B[N, N-i+1] = A[N, N-i+2]
        B[N-i+1, 1] = A[N-i+2, 1]
        B[i, N] = A[i-1, N]
    end

    for i=1:N
        println(join(B[i, :], ""))
    end
end

solve()
