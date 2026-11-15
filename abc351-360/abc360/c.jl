function solve()
    N = parse(Int, readline())
    A = parse.(Int, split(readline()))
    W = parse.(Int, split(readline()))

    s = 0
    m = zeros(Int, N)

    for i=1:N
        m[A[i]] = max(m[A[i]], W[i])
        s += W[i]
    end

    s - sum(m)
end

println(solve())
