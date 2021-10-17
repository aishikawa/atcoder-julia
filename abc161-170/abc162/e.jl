function moduloexponentiation(a, b, m)
    ret = 1
    a = a%m
    while b > 0
        if b&1 == 1
            ret *= a
            ret %= m
        end
        b = b >> 1
        a = (a*a) % m
    end
    ret
end

function solve()
    n, k = [parse(Int, x) for x in split(readline())]
    m = 1000000007
    ret = 0
    numsequence = zeros(Int, k)
    for c=k:-1:1
        ns = moduloexponentiation(k÷c, n, m)
        for i=2:(k÷c)
            ns -= numsequence[c*i]
            while ns < 0
                ns += m
            end
        end
        ns %= m
        numsequence[c] = ns
        ret += ns*c
        ret %= m
    end
    ret
end

println(solve())
