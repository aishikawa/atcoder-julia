function pow(x, y, p)
    ret = 1
    x = x % p
    while y ≠ 0
        if y & 1 ≠ 0
            ret = (ret * x) % p
        end
        y = y >> 1
        x = (x * x) % p
    end
    ret
end

function solve()
    p = 998244353
    n, k, m = [parse(Int, x) for x in split(readline())]
    if m % p == 0
        0
    else
        r = pow(k, n, p-1)
        pow(m, r, p)
    end
end

println(solve())
