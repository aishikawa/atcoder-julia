function solve()
    M = 998244353
    N, K = parse.(Int, split(readline()))
    d = invmod(N, M)
    d2 = mod(d*d, M)

    t = mod(2*(N-1), M)
    m21 = mod(t*d2, M)
    m11 = mod(1-m21, M)
    m12 = mod(d2*2, M)
    m22 = mod(1-m12, M)

    p1 = 1
    p2 = 0
    for _=1:K
        np1 = mod(mod(m11*p1, M) + mod(m12*p2, M), M)
        np2 = mod(mod(m21*p1, M) + mod(m22*p2, M), M)
        p1, p2 = np1, np2
    end
    ans = mod(mod(N+2, M) * invmod(2, M), M)
    ans = mod(p2 * ans, M)
    ans = mod(ans+p1, M)
    ans
end

println(solve())
