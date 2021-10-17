function pow(b, n, m)
    ret = 1
    while n != 0
        if n & 1 != 0
            ret = (ret*b) % m
        end
        b = b^2 % m
        n = n >> 1
    end
    ret
end

function solve()
    m = 1000000007
    n = parse(Int, readline())
    ret = pow(10, n, m) - 2*pow(9, n, m) + pow(8, n, m)
    ret %= m
    ret = (ret+m) % m
end

println(solve())
