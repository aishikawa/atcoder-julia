function solve()
    m = 998244353
    inv100 = invmod(100, m)

    N, P = [parse(Int, x) for x in split(readline())]

    cprob = mod(P * inv100, m)
    nprob = mod(1 - cprob, m)
    e = zeros(Int, N)
    e[1] = 1
    if N ≥ 2
        e[2] = mod(cprob + mod((e[1]+1) * nprob, m), m)
    end
    for i=3:N
        e[i] = mod(mod((e[i-2]+1) * cprob, m) + mod((e[i-1]+1) * nprob, m), m)
    end

    e[N]
end

println(solve())
