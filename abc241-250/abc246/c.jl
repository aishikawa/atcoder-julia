function solve()
    N, K, X = [parse(Int, x) for x in split(readline())]
    As = [parse(Int, x) for x in split(readline())]

    total = sum(As)
    k = 0
    for i in 1:N
        kk = As[i] ÷ X
        if k + kk ≥ K
            return total - K*X
        else
            k += kk
            As[i] -= kk*X
        end
    end

    sort!(As, rev=true)

    sum(As[K-k+1:end])
end

println(solve())
