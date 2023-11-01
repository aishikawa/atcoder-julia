using Primes

function solve()
    n = parse(Int, readline())

    c = floor(Int, (n ÷ 2)^(1/3))
    if c == 0
        return 0
    end
    ps = primes(c)
    ret = 0
    for i=1:length(ps)
        v = n ÷ ps[i]^3
        y = searchsortedlast(ps[1:i-1], v)
        ret += y
    end
    ret
end

println(solve())
