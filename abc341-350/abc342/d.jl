using Primes

function solve()
    N = parse(Int, readline())
    A = [parse(Int, x) for x in split(readline())]

    d = Dict{Tuple, Int}()
    for a in A
        f = factor(a)
        ps = []
        for (p, e) in f
            if isodd(e)
                append!(ps, p)
            end
        end
        k = Tuple(sort(ps))
        d[k] = get(d, k, 0) + 1
    end

    ans = 0
    for (k, v) in d
        if k == (0,)
            ans += sum((N-v):(N-1))
        else
            ans += binomial(v, 2)
        end
    end

    ans
end

println(solve())
