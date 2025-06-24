function numline(L::Vector{Int}, width::Int)::Int
    ret = 1
    p = 0
    for l in L
        if p + l ≤ width
            p = p + l + 1
        else
            ret += 1
            p = l + 1
        end
    end
    ret
end

function solve()
    N, M = [parse(Int, x) for x in split(readline())]
    L = [parse(Int, x) for x in split(readline())]

    l = maximum(L)-1
    r = sum(L) + N

    while l+1 < r
        h = (l + r) ÷ 2
        nl = numline(L, h)
        if nl ≤ M
            r = h
        else
            l = h
        end
    end
    r
end

println(solve())
