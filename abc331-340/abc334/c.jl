function solve()
    N, K = [parse(Int, x) for x in split(readline())]
    A = [parse(Int, x) for x in split(readline())]

    pre = zeros(Int, K)
    for i=2:K
        pre[i] = pre[i-1]
        if i % 2 == 0
            pre[i] += A[i] - A[i-1]
        end
    end

    suf = zeros(Int, K)
    for i=K-1:-1:1
        suf[i] = suf[i+1]
        if (K-i) % 2 ≠ 0
            suf[i] += A[i+1] - A[i]
        end
    end

    minimum(pre[1:2:K] .+ suf[1:2:K])
end

println(solve())
