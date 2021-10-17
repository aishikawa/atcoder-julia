using Primes

function solve()
    n = parse(Int, readline())
    fs = Primes.factor(n)
    ret = 0
    for x in values(fs)
        i = 1
        while x >= i
            ret += 1
            x -= i
            i += 1
        end
    end
    ret
end

println(solve())
