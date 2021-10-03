function solve()
    n = parse(Int, readline())
    as = [parse(Int, x) for x in split(readline())]

    bs = zeros(Int, n)
    bs[1] = as[1]
    for i in 2:n
        bs[i] = as[i] + bs[i-1]
    end
    ret = (n-1) * sum(x->x^2, as)
    for i in 2:n
        ret -= 2*as[i]*bs[i-1]
    end
    ret
end

println(solve())
