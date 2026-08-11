function solve()
    N = parse(Int, readline())
    A = fill('.', N, N)
    for i=1:N
        A[i, :] = collect(readline())
    end
    B = fill('.', N, N)
    for i=1:N
        B[i, :] = collect(readline())
    end

    C = A .== B
    idx = findfirst(x->x == false, C)
    println("$(idx[1]) $(idx[2])")
end

solve()
