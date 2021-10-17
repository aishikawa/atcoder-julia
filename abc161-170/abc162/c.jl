function solve()
    k = parse(Int, readline())
    ret = 0
    for a=1:k, b=1:k, c=1:k
        ret += gcd(a, b, c)
    end
    ret
end

println(solve())
