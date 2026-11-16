using DataStructures

function solve()
    N, T = parse.(Int, split(readline()))
    S = collect(readline())
    X = parse.(Int, split(readline()))

    px = sortperm(X)
    X = X[px]
    S = S[px]
    S = [s == '0' ? -1 : 1 for s in S]

    Y = X .+ S * (T+0.1)
    py = sortperm(Y)

    ft = FenwickTree{Int}(N)
    ans = 0
    for (i, y) in enumerate(py)
        ans += (i-1) - prefixsum(ft, y)
        inc!(ft, y, 1)
    end

    ans
end

println(solve())
