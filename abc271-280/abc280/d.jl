using Primes

function solve()
    K = parse(Int, readline())
    factors = factor(K)

    ans = 1
    for (p, e) in factors
        x = 1
        n = p
        while x < e
            n += p
            m = n
            while m % p == 0
                m = m ÷ p
                x += 1
            end
        end
        ans = max(ans, n)
    end
    ans
end

println(solve())
