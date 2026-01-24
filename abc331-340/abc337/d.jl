MAX_VAlUE = 10^6

function f(V::Vector{Char}, K::Int, l::Int)::Int
    ret = MAX_VAlUE
    if K > l
        return ret
    end

    dot = cumsum(V .== '.')
    x = cumsum(V .== 'x')
    if x[K] == 0
        ret = min(ret, dot[K])
    end
    for i=2:l-K
        if x[i+K-1] - x[i-1] == 0
            ret = min(ret, dot[i+K-1] - dot[i-1])
        end
    end

    ret
end

function solve()
    H, W, K = [parse(Int, x) for x in split(readline())]
    S = fill('.', (H, W))
    for i=1:H
        S[i, :] = collect(readline())
    end

    ret = MAX_VAlUE
    for i=1:H
        ret = min(ret, f(S[i, :], K, W))
    end
    for j=1:W
        ret = min(ret, f(S[:, j], K, H))
    end

    ret == MAX_VAlUE ? -1 : ret
end

println(solve())
