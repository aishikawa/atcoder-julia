function solve(N::Int, D::Int, K::Int)
    D = mod(D, N)
    g = gcd(N, D)
    c = N ÷ g
    (d, r) = divrem(K-1, c)
    mod(D*r + d, N)
end

function solve()
    T = parse(Int, readline())
    for _=1:T
        N, D, K = [parse(Int, x) for x in split(readline())]
        println(solve(N, D, K))
    end
end

solve()
