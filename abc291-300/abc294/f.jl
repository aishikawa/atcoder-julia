function solve()
    N, M, K = [parse(Int, x) for x in split(readline())]
    takahashi = zeros(Int, N, 2)
    aoki = zeros(Int, M, 2)
    for i=1:N
        takahashi[i, :] = [parse(Int, x) for x in split(readline())]
    end
    for j=1:M
        aoki[j, :] = [parse(Int, x) for x in split(readline())]
    end

    l = 0.0
    r = 1.0

    while r - l > 1e-12
        v = zeros(Float64, M)
        x = (l+r) / 2
        z = x / (1-x)
        for j=1:M
            v[j] = aoki[j, 1] - aoki[j, 2] * z
        end
        sort!(v)

        num = 0
        for i=1:N
            w = takahashi[i, 1] - takahashi[i, 2] * z
            num += M - searchsortedfirst(v, -w) + 1
        end
        if num < K
            r = x
        else
            l = x
        end
    end
    100r
end

println(solve())
