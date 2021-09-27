function solve()
    n = parse(Int, readline())
    as = zeros(Int, n)
    bs = zeros(Int, n)
    for i=1:n
        a, b = [parse(Int, x) for x in split(readline())]
        as[i] = a
        bs[i] = b
    end

    ret = 10^6
    for i=1:n, j=1:n
        t = if i == j
            as[i] + bs[j]
        else
            max(as[i], bs[j])
        end
        ret = min(ret, t)
    end
    ret
end

println(solve())