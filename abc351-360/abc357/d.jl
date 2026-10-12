function solve()
    m = 998244353
    N = readline()
    l = length(N)
    N = parse(Int, N)

    i = 0
    a = N % m
    p = powermod(10, l, m)
    ans = 0
    while (N >> i) ≠ 0
        if ((N >> i) & 1) == 1
            ans = (ans * p) % m
            ans = (ans + a) % m
        end        
        b = (a * p) % m
        a = (b + a) % m
        i += 1
        p = p^2 % m
    end
    ans
end

println(solve())
