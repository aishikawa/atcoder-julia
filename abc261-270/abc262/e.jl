function comb(n, k, M, fact, inv_fact)
    if k > n
        0
    else
        ((fact[n+1] * inv_fact[k+1]) % M) * inv_fact[n-k+1] % M
    end
end


function solve()
    M = 998244353
    n, m, k = [parse(Int, x) for x in split(readline())]

    fact = ones(Int, n+1)
    for i=3:n+1
        fact[i] = (fact[i-1] * (i-1)) % M
    end
    inv_fact = [invmod(x, M) for x in fact]

    degrees = zeros(Int, n)
    for i=1:m
        u, v = [parse(Int, x) for x in split(readline())]
        degrees[u] += 1
        degrees[v] += 1
    end
    num_odd = sum([d % 2 for d in degrees])
    num_even = n - num_odd

    ret = 0
    for i=0:2:k
        a = comb(num_odd, i, M, fact, inv_fact)
        b = comb(num_even, k-i, M, fact, inv_fact)
        c = (a * b) % M
        ret = (ret + c) % M
    end

    ret
end

println(solve())
