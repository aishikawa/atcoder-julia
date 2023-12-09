using Primes

function solve()
    n = parse(Int, readline())
    ret = 0
    for i=1:n
        fs = factor(i)
        b = 1
        for f in keys(fs)
            if isodd(fs[f])
                b *= f
            end
        end
        ret += floor(Int, √(n ÷ b))
    end
    ret
end

println(solve())
