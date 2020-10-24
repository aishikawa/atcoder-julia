function solve()
    n = parse(Int, readline())
    as = zeros(Int, n)
    bs = zeros(Int, n)
    for i=1:n
        a, b = [parse(Int, x) for x in split(readline())]
        as[i] = a
        bs[i] = b
    end
    sort!(as)
    sort!(bs)
    if n % 2 == 0
        m = n ÷ 2
        ma = (as[m] + as[m+1])
        mb = (bs[m] + bs[m+1])
        mb - ma + 1
    else
        m = (n+1) ÷ 2
        ma = as[m]
        mb = bs[m]
        mb - ma + 1
    end
end

println(solve())
