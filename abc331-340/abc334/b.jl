function solve()
    A, M, L, R = [parse(Int, x) for x in split(readline())]

    l = cld(L-A, M)
    r = fld(R-A, M)

    r - l + 1
end

println(solve())
