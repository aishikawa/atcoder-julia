function solve()
    N, M = [parse(Int, x) for x in split(readline())]
    A = [parse(Int, x) for x in split(readline())]
    B = [parse(Int, x) for x in split(readline())]
    sort!(A)
    sort!(B)

    l = 0
    r = 10^9+1
    while l+1 < r
        c = (l+r) ÷ 2
        a = searchsortedlast(A, c)
        b = searchsortedfirst(B, c)
        if a ≥ M-b+1
            r = c
        else
            l = c
        end
    end

    r
end

println(solve())
