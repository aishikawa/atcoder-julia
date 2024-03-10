function solve()
    n, l, r = [parse(Int, x) for x in split(readline())]
    as = [parse(Int, x) for x in split(readline())]

    ls = zeros(Int, n+1)
    ls[1] = 0
    for i=2:n+1
        ls[i] = min(ls[i-1]+as[i-1], l*(i-1))
    end

    rs = zeros(Int, n+1)
    rs[n+1] = 0
    for i=0:n-1
        rs[n-i] = min(rs[n-i+1]+as[n-i], r*(i+1))
    end

    minimum(ls .+ rs)

end

println(solve())
