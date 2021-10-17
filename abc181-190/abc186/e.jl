function solve()
    n, s, k = [parse(Int, x) for x in split(readline())]
    s = n-s
    d = gcd(n, s, k)
    n ÷= d
    s ÷= d
    k ÷= d
    if gcd(k, n) ≠ 1
        -1
    else
        i = invmod(k, n)
        mod(i*s, n)
    end
end

function main()
    t = parse(Int, readline())
    for _=1:t
        println(solve())
    end
end

main()
