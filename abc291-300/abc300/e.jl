function solve()
    m = 998244353
    N = parse(Int, readline())
    f2 = 0
    while N % 2 == 0
        f2 += 1
        N = N ÷ 2
    end
    f3 = 0
    while N % 3 == 0
        f3 += 1
        N = N ÷ 3
    end
    f5 = 0
    while N % 5 == 0
        f5 += 1
        N = N ÷ 5
    end
    if N ≠ 1
        return 0
    end

    inv5 = invmod(5, m)
    memo = Dict{Tuple{Int, Int, Int},Int}((0, 0, 0)=>1)
    function prob(x, y, z)
        if (x, y, z) ∈ keys(memo)
            memo[(x, y, z)]
        else
            ret = 0
            if x ≥ 1
                ret = mod(ret + prob(x-1, y, z), m)
            end
            if y ≥ 1
                ret = mod(ret + prob(x, y-1, z), m)
            end
            if x ≥ 2
                ret = mod(ret + prob(x-2, y, z), m)
            end
            if z ≥ 1
                ret = mod(ret + prob(x, y, z-1), m)
            end
            if x ≥ 1 && y ≥ 1
                ret = mod(ret + prob(x-1, y-1, z), m)
            end
            ret = mod(ret*inv5, m) 
            memo[(x, y, z)] = ret
            ret
        end
    end
    prob(f2, f3, f5)
end

println(solve())
