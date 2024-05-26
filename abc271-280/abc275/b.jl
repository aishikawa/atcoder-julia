function solve()
    M = 998244353
    A, B, C, D, E, F = [parse(Int, x) % M for x in split(readline())]

    L = mod(A * B, M)
    L = mod(L * C, M)

    R = mod(D * E, M)
    R = mod(R * F, M)

    mod(L - R, M)
end

println(solve())
